(* Copyright (C) 2019, Thomas Leonard *)

open Astring

let hints = String.Map.of_list [
    "1DC295D11A3F910DA49D3839AA1A7812B40B0B6E",
    "Ken Hayber has been writing ROX applications since 2003. This key \
     was announced on the rox-users list on 5 Jun 2005.";

    "4338D5420E0BAEB6B2E73530B66A4F24AB8B4B65",
    "Thomas Formella is experimenting with packaging programs for 0launch. This key \
     was announced on 11 Sep 2005 on the zero-install mailing list.";

    "92429807C9853C0744A68B9AAE07828059A53CC1",
    "Thomas Leonard created Zero Install and ROX. This key has been replaced, but may still \
     sign older packages.";

    "DA9825AECAD089757CDABD8E07133F96CA74D8BA",
    "Thomas Leonard created Zero Install and ROX. This key is used to sign updates to the \
     0install tools; you should accept it. It was announced on the Zero Install mailing list \
     on 2009-05-31.";

    "0597A2AFB6B372ACB97AC6E433B938C2E9D8826D", 
    "Stephen Watson is a project admin for the ROX desktop, and has been involved with the \
     project since 2000. This key has been used for signing software since the 23 Jul 2005 \
     announcement on the zero-install mailing list.";

    "F0A0CA2A8D8FCC123F5EC04CD8D59DC384AE988E",
    "Piero Ottuzzi is experimenting with packaging programs for 0launch. This key has been \
     known since a 16 Mar 2005 post to the zero-install mailing list. It was first used to \
     sign software in an announcement posted on 9 Aug 2005.";

    "FC71DC3364367CE82F91472DDF32928893D894E9",
    "Niklas Höglund is experimenting with using Zero Install on the Nokia 770. This key has \
     been known since the announcement of 4 Apr 2006 on the zero-install mailing list.";

    "B93AAE76C40A3222425A04FA0BDA706F2C21E592", (* expired *)
    "Ilja Honkonen is experimenting with packaging software for Zero Install. This key \
     was announced on 2006-04-21 on the zero-install mailing list.";

    "6AD4A9C482F1D3F537C0354FC8CC44742B11FF89",
    "Ilja Honkonen is experimenting with packaging software for Zero Install. This key \
     was announced on 2009-06-18 on the zero-install mailing list.";

    "5D3D90FB4E6FE10C7F76E94DEE6BC26DBFDE8022",
    "Dennis Tomas leads the rox4debian packaging effort. This key has been known since \
     an email forwarded to the rox-devel list on 2006-05-28.";

    "2E2B4E59CAC8D874CD2759D34B1095AF2E992B19",
    "Lennon Cook creates the FreeBSD-x86 binaries for various ROX applications. \
     This key was announced in a Jun 17, 2006 post to the rox-devel mailing list.";

    "7722DC5085B903FF176CCAA9695BA303C9839ABC",
    "Lennon Cook creates the FreeBSD-x86 binaries for various ROX applications. \
     This key was announced in an Oct 5, 2006 post to the rox-users mailing list.";

    "03DC5771716A5A329CA97EA64AB8A8E7613A266F",
    "Lennon Cook creates the FreeBSD-x86 binaries for various ROX applications. \
     This key was announced in an Oct 7, 2007 post to the rox-users mailing list.";

    "617794D7C3DFE0FFF572065C0529FDB71FB13910",
    "This low-security key is used to sign Zero Install interfaces which have been \
     automatically generated by a script. Typically, the upstream software didn't \
     come with a signature, so it's impossible to know if the code is actually OK. \
     However, there is still some benefit: if the archive is modified after the \
     script has signed it then any further changes will be detected, so this isn't \
     completely pointless.";

    "5E665D0ECCCF1215F725BD2FA7421904E3D1B654",
    "Daniel Carrera works on the OpenDocument viewer from opendocumentfellowship.org. \
     This key was confirmed in a zero-install mailing list post on 2007-01-09.";

    "635469E565B8D340C2C9EA4C32FBC18CE63EF486",
    "Eric Wasylishen is experimenting with packaging software with Zero Install. \
     This key was announced on the zero-install mailing list on 2007-01-16 and then lost.";

    "E5175248514E9D4E558B5925BC456918F32AC5D1",
    "Eric Wasylishen is experimenting with packaging software with Zero Install. \
     This key was announced on the zero-install mailing list on 2008-12-07";

    "C82D382AAB381A54529019D6A0F9B035686C6996",
    "Justus Winter is generating Zero Install feeds from pkgsrc (which was originally \
     NetBSD's ports collection). This key was announced on the zero-install mailing list \
     on 2007-06-01.";

    "D7582A2283A01A6480780AC8E1839306AE83E7E2",
    "Tom Adams is experimenting with packaging software with Zero Install. \
     This key was announced on the zero-install mailing list on 2007-08-14.";

    "3B2A89E694686DC4FEEFD6F6D00CA21EC004251B",
    "Tuomo Valkonen is the author of the Ion tiling window manager. This key fingerprint \
     was taken from http://modeemi.fi/~tuomov/ on 2007-11-17.";

    "A14924F4DFD1B81DED3436240C9B2C41B8D66FEA",
    "Andreas K. Förster is experimenting with creating Zero Install feeds. \
     This key was announced in a 2008-01-25 post to the zeroinstall mailing list.";

    "520DCCDBE5D38E2B22ADD82672E5E2ACF037FFC4",
    "Thierry Goubier creates PPC binaries for the ROX desktop. This key was \
     announced in a 2008-02-03 posting to the rox-users list.";

    "517085B7261D3B03A97515319C2C2CD1D41AF5BB",
    "Frank Richter is a developer of the Crystal Space 3D SDK. This key was \
     confirmed in a 2008-09-04 post to the zero-install-devel mailing list.";

    "32D5CEB11052FB5A21452B6E226D617E1B16CCD3",
    "Rene Lopez is a Zero Install developer and the packager for the ClanBomber game.";

    "77F46DC2F98DB14BFB957102D980D4F15AFE9C14",
    "Anders F Björklund is a Zero Install developer, whose work includes the Mac port \
     and feeds for Firefox, OpenOffice.org and SeaMonkey. Key announced on the zeroinstall \
     mailing list 2010-04-21.";

    "B893F41ED9E753C631EB09D4A9D3F38F22C6A977",
    "Wayne Scott has created a feed for sshuttle. This key was \
     announced on the zeroinstall mailing list on 2010-05-14.";

    "7EADC3F1EFE150C371EDE0A15B5CB97421BAA5DC",
    "Simon E. Silva Lauinger is part of the 0install.de effort. This key was announced \
     on the zeroinstall mailing list on 2010-05-16.";

    "FA2577C515715EEE1261D3B0EFD438E5019F0846",
    "Simon E. Silva Lauinger is part of the 0install.de effort. This key was announced \
     on the zeroinstall mailing list on 2011-08-01.";

    "EACF000E9C82C83EC234705E723CC5B4B6869B81",
    "Aleksey Lim is a developer of the Sugar desktop environment and a Zero Install \
     developer. This key was announced on the zeroinstall mailing list on 2010-06-27.";

    "F442D6530E05336C348DE676FE58602B58894ED2",
    "Tim Cuthbertson provides a number of utility programs through Zero Install. \
     This key was announced on the zeroinstall mailing list on 2010-07-25.";

    "66B436AC2D4B2281257B9BB985A0F0DAB46EE668",
    "Bastian Eicher is the maintainer of the Windows version of Zero Install. \
     This key was announced on the zeroinstall mailing list on 2010-09-21.";

    "4CFBD0B5B7102BF66E9F12AEFBCAE33FC2DE322B",
    "IT Innovation delivers proofs-of-concept, demonstrators and \
     novel operational systems to partners in industry and commerce.";

    "D7BEEFEEA3B12C7277184D9AC76E50582961BB6F",
    "Sugar is the core component of a worldwide effort to provide \
     every child with equal opportunity for a quality education. \
     This key was announced on the zeroinstall mailing list on 2011-05-15.";

    "1E6542DE1A476A6CAAA62547F105B0EB293069D7",
    "Sugar is the core component of a worldwide effort to provide \
     every child with equal opportunity for a quality education. \
     This key was announced on the zeroinstall mailing list on 2011-05-15.";

    "61EA548A0933AB2A2B183FD47C0F93F8EC9F8344",
    "This key signs packages built by the Sugar Labs build system. \
     This key was announced on the zeroinstall mailing list on 2011-10-29.";

    "AD3ED57BBF9639F52668EEEC1BC29AAE9B543039",
    "Tim Diels is a 0install contributor and is experimenting with \
     using 0install to distribute web apps. This key was announced on \
     the mailing list on 2011-07-24.";

    "765B086662D9CA2615E62111C675799A4E7A5231",
    "Dave Abrahams develops the Ryppl C++ software management system, \
     and added Windows support to 0compile. This key was announced on \
     the mailing list on 2012-05-08.";

    "E18CA35213A9C8F4391BD7C519BEF9B23A8C0090",
    "This key is used to sign the automatically-generated feeds for \
     maven project. It was announced on the 0install mailing list on \
     2013-04-30";

    "AC9B973549D819AE22BCD08D22EA111A7E4242A4",
    "This is the signing key for repo.roscidus.com, a repository of \
     third-party free software for which the upstream projects do not \
     provide a 0install feed. It is run by the 0install.net project.";

    "6BB181E629F3591A8647A393962C1A2577CB1ACD",
    "This key is used to sign the Armagetron feeds at http://simamo.de.";

    "770C1FC49A8C33E75794A9DF8EA318271BFD1EBE",
    "Florian Höch publishes the dispcalGUI monitor calibration GUI. \
     This key was announced on the 0install mailing list on 2014-04-26.";

    "DCB65352691DD1562B0672C93937F4E077A59446",
    "This key signs the OCaml tools repository at tools.ocaml.org.";

    "B31A26B256E6827C2B172A2113E2283B291DF4A6",
    "This keys signs software at tuxfamily.org. \
     It was announced on the 0install mailing list on 2015-01-03.";

    "368FE1BC04497023C3931BE6E40072258B3AF881",
    "Bart van Strien's old repository key. This key was announced on the \
     0install mailing list on 2015-07-12.";

    "3105C7FFF107AA2DE5302E748319B2F9A139EBDA",
    "Bart van Strien's repository. This (sub-)key was announced on the \
     0install mailing list on 2015-07-12.";

    "A4364AF860CFC086A88711A79437846DB9F1801B",
    "Alexandr Danilow's repository at modos189.ru. This key was announced \
     on the 0install mailing list on 2015-10-22.";

    "CE7D7DB65853C2E8FDC973FAB7E5E9FCD2403A24",
    "This is the official key of AXOOM GmbH (https://axoom.com/).";

    "6B9AF86596226571FB363EC5F79219AAB7B1370C",
    "Torsten Dittmann uses this key to provide software at omniawrite.com. \
     This key was announced on the 0install mailing list on 2019-12-07.";

    "88C8A1F375928691D7365C0259AA3927C24E4E1E",
    "This is the signing key for apps.0install.net, a repository of common \
     tools, libraries and runtime environments run by the 0install.net \
     project.";

    "6F2BA466746148A09EA1B9CD40BD2489FD4754F0",
    "This is the official key of DeepL SE (https://www.deepl.com/).";
  ]
