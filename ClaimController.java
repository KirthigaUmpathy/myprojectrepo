package com.cg.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cg.model.Claim;
import com.cg.model.PolicyDetails;
import com.cg.model.PolicyQuestions;
import com.cg.service.CService;

@Controller
public class ClaimController {
	
	@Autowired
	@Qualifier(value = "cservice")
	private CService claimService;
	
	@RequestMapping(value = "/create.htm",method = RequestMethod.GET)
	public String createClaim(Model model ,@RequestParam("policynumber") int polNumber, @RequestParam("username") String username ) {
		
		model.addAttribute("profile",new Claim());
		model.addAttribute("policyNumber", polNumber);
		model.addAttribute("userName", username);
		return "createclaim";
		
	}
	
	
	@RequestMapping(value = "/nextcreate.htm",method = RequestMethod.POST)
	public String createNext(Model model,Claim c, HttpServletRequest req) {
		
		//HttpSession session=req.getSession(true);
		//session.setAttribute("claimobject", c);
		
		model.addAttribute("claim", c);
		
		// retriving set of questions here from qdao to render in nextclaim.jsp...
		
		List<PolicyQuestions> questions=claimService.getQuestionsList(c.getClaimType());
		//System.out.println(questions);
		model.addAttribute("quesList", questions);
		return "nextclaim";
	}
	
	@RequestMapping(value = "/createc.htm",method = RequestMethod.POST)
	public String addClaim(Model model , Claim cobject ,HttpServletRequest req) {  
		
		//@SessionAttribute("claimobject")
		
		//System.out.println("create object "+cobject);
		
		List<Claim> claims=new ArrayList<>();
		claims.add(cobject);
		
		claimService.saveClaims(claims);
		
		String[] quest=req.getParameterValues("questionId");
		String[] questions=req.getParameterValues("policyQuestion");
		String[] answers=req.getParameterValues("selected");
		
		
		//System.out.println(Arrays.toString(quest));
		//System.out.println(Arrays.toString(answers));
		
		List<PolicyDetails> details=new ArrayList<>();
		for(int i=0;i<quest.length;i++) {
			PolicyDetails pd=new PolicyDetails(cobject.getPolicyNumber(),questions[i],Integer.parseInt(quest[i]),answers[i],cobject.getClaimNumber());
			details.add(pd);
		}
		
		claimService.savePolicyDetails(details);
		
		return "added";
		
	}


}
