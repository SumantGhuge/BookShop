<%@ Page Title="" Language="C#" MasterPageFile="~/MY MASTER.master" AutoEventWireup="true" CodeFile="Articales.aspx.cs" Inherits="Articales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoNoSpacing
	{margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	    margin-left: 0cm;
        margin-right: 0cm;
        margin-top: 0cm;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="MsoNormal" style="text-align:center">
    <b style="mso-bidi-font-weight:
normal"><span style="font-size:18.0pt;mso-bidi-font-size:14.0pt;line-height:
115%">Hacking Yourself Out of the Banking System and Live Only on BitCoin</span></b><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:
115%"><o:p></o:p></span></b></p>
<p class="MsoNormal">
    <o:p>
    &nbsp;</o:p></p>
<p class="MsoNoSpacing" style="text-align:justify">
    I’ve been interested in BitCoin since the very beginning but, until now, I considered BTC some very nice cryptographic experiment with high potential but almost no effects on real life.</p>
<p class="MsoNoSpacing" style="text-align:justify">
    A few years ago, buying BTC or selling them in order to get fiat ( “real” currency such as USD, EUR, etc ) wasn’t easy at all, but now things changed, everything is way much easier. That’s why I decided to live only with BitCoin and this is how I’m trying to do it.</p>
<p class="MsoNormal">
    <o:p>
    &nbsp;</o:p></p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Bitcoin<o:p></o:p></span></b></p>
<p class="MsoNormal">
    Please be aware that this is still work in progress, I’m trying the methods I’m going to show you these very same days, do not give my word for granted, if you want to follow this path, please be sure you know what you’re doing and most importantly double check every single thing.</p>
<p class="MsoNormal">
    <o:p>
    &nbsp;</o:p></p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Reasons<o:p></o:p></span></b></p>
<p class="MsoNormal">
    I don’t know about you, but honestly I’m sick and tired of the Banking system for a few reasons: I do not accept the concept of “trust”, I don’t know those guys, why should I trust them? On the other hand, with BTC trust is not even considered to be a factor.</p>
<p class="MsoNormal">
    I do not accept someone else having control over my money or credit cards, I earned those money, who the fuck are you to decide how much and when can I withdraw or deposit?</p>
<p class="MsoNormal">
    I do not accept that the government has the right to access my bank accounts, see my balance and eventually freeze them.</p>
<p class="MsoNormal">
    I do not accept 2-3 business days for a wire transfer, we all know that that is not due to technical reasons, banks just speculate on those money while they’re on hold.</p>
<p class="MsoNormal">
    I do not accept their fees, they’re way too much high for the quality of service they give to you.</p>
<p class="MsoNormal">
    There’re plenty of other minor reasons of course, but these are the most important ones, at least for me.</p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Problems<o:p></o:p></span></b></p>
<p class="MsoNormal">
    Like any other big change, there’re a few issues we need to solve, in this section I’ll explain the major ones while in the next one I’ll show you how I’m solving them.</p>
<p class="MsoNormal">
    <o:p>
    &nbsp;</o:p></p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Security<o:p></o:p></span></b></p>
<p class="MsoNormal">
    The first thing you should keep in mind is to stay safe, what I mean is that there’re plenty of services where you can create your own bitcoin wallet, but wallets stored on the web are as secure as the web infrastructure they’re relying upon.</p>
<p class="MsoNormal">
    No matter how safe they clame to be, web services can be hacked (or simply go bankrupt, see MtGox for instance) and eventyally there’s a pretty good chance to lose all of your money.</p>
<p class="MsoNormal">
    There’s no central entity, there’s no guarantee, an online wallet is not a bank, so no one will give your BTC back if they somehow get lost.</p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal">
    <o:p>
    &nbsp;</o:p></b></p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Getting fiat (real money) from your BTC wallet<o:p></o:p></span></b></p>
<p class="MsoNormal">
    BTC are great and everything, but you can’t pay your groceries with them, can you? Or your rent, or a restaurant … you need a good and reliable way to get USD or EUR or whatever from your BTC account anytime, anywhere.</p>
<p class="MsoNormal">
    <o:p>
    &nbsp;</o:p></p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Putting fiat into your BTC wallet<o:p></o:p></span></b></p>
<p class="MsoNormal">
    AKA How to get your paycheck directly into your BTC wallet … I work for an US company and every month I receive my paycheck in USD (which eventually are converted to EUR from my bank), I need a way to receive these money directly as BTC to my wallet without asking my employer to switch to BTC payments, ideally I would just give him a new IBAN which somehow “maps” to my BTC wallet.</p>
<p class="MsoNormal">
    &nbsp;</p>
<p class="MsoNormal">
    <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;line-height:115%">Solutions<o:p></o:p></span></b></p>
<p class="MsoNormal">
    Regarding the security issue, the only way to stay 99% safe ( 100% is a chimera, we all know that ) is to have a hardware wallet, personally I’ve bought a Trezor (which hopefully is going to arrive tomorrow) but there’re plenty of other options available out there.</p>
</asp:Content>

