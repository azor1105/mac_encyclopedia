import 'package:encyclopedia/utils/my_images.dart';

class PcData {
  PcData({
    required this.imagePath,
    required this.model, 
    required this.cpu, 
    required this.ram,
    required this.released,
    required this.display,
    required this.price,
    required this.infoPageImage2Path,
    required this.infoPageImage3Path,
    required this.infoPageData1,
    required this.infoPageData2,
    required this.infoPageData3,
    required this.infoPageData2Title,
    required this.infoPageData3Title,
  });

  String imagePath;
  String model;
  String cpu;
  String ram;
  String released;
  String display;
  String price;
  String infoPageImage2Path;
  String infoPageImage3Path;
  String infoPageData1;
  String infoPageData2;
  String infoPageData2Title;
  String infoPageData3;
  String infoPageData3Title;

  static List<PcData> pcDataInfo() {
    List<PcData> data = [];
    // 1
    data.add(PcData(
      imagePath: MyImages.macintosh128K,
      model: "Macinstosh 128K",
      cpu: "Motorola 68000",
      ram: "400 KB",
      released: "Jan.24, 1984",
      display: "512x342",
      price: "2,495",
      infoPageImage2Path: MyImages.infoPageMac128_2,
      infoPageImage3Path: MyImages.infoPageMac128_3,
      infoPageData1: "The Macintosh 128K, originally released as the Apple Macintosh, is the original Apple Macintosh personal computer."
      " Its beige case included a 9 in (23 cm) CRT monitor and it came with a keyboard and mouse."
      " It played a pivotal role in establishing desktop publishing as a general office function."
      " A handle built into the top of the case made it easier to lift and carry. It sold for US\$2,495 (equivalent to \$6,508 in 2021)."
      " The Macintosh was introduced by a television commercial entitled \"1984\" shown during Super Bowl XVIII on January 22, 1984[6] and directed by Ridley Scott."
      " Sales of the Macintosh were strong from its initial release on January 24, 1984, and reached 70,000 units on May 3, 1984.[7]"
      " Upon the release of its successor, the Macintosh 512K, it was rebranded as the Macintosh 128K. The computer's model number was M0001.[8]",
      infoPageData2Title: "Processor and memory",
      infoPageData2: "The heart of the computer was a Motorola 68000 microprocessor running at 7.8336 MHz,"
      " connected to 128 KB RAM shared by the processor and the display controller."
      " The boot procedure and some operating system routines were contained in an additional 64 KB ROM chip."
      " Apple did not offer RAM upgrades. Unlike the Apple II, no source code listings of the Macintosh system ROMs were offered.\n\n"
      "The RAM in the Macintosh consisted of sixteen 64k×1 DRAMs."
      " The 68000 and video controller took turns accessing DRAM every four CPU cycles during display of the frame buffer,"
      " while the 68000 had unrestricted access to DRAM during vertical and horizontal blanking intervals."
      " Such an arrangement reduced the overall performance of the CPU as much as 35% for most code as the display logic often blocked the CPU's access to RAM."
      " Despite the nominally high clock rate, this caused the computer to run slower than several of its competitors and resulted in an effective clock rate of 6 MHz.",
      infoPageData3Title: "Software",
      infoPageData3: "The Macintosh shipped with the very first System and Finder application,"
      " known to the public as \"System 1.0\" (formally known as System 0.97 and Finder 1.0)."
      " The original Macintosh saw three upgrades to both before it was discontinued."
      " Apple recommends System 2.0 and Finder 4.2, with System 3.2 and Finder 5.3 as the maximum."
      " System 4.0 officially dropped support for the Macintosh 128K because it was distributed on 800 KB floppy disks,"
      " which could not be used by the 128K.",
    ));

    // 2
    data.add(PcData(
      imagePath: MyImages.macG3,
      model: "iMac G3",
      cpu: "PowerPc G3",
      ram: "256 MB",
      released: "Aug.15, 1998",
      display: "1024x786",
      price: "1,299",
      infoPageImage2Path: MyImages.infoPageMacG3_2,
      infoPageImage3Path: MyImages.infoPageMacG3_3,
      infoPageData1: "The iMac G3, originally released as the iMac,"
      " is a series of Macintosh personal computers developed by Apple under the tenure"
      " of Apple's interim CEO and cofounder Steve Jobs"
      " after his return to the financially troubled company.\n\n"
      "The iMac was a huge success for Apple,"
      " revitalizing the company and influencing competitors' product designs."
      " It played a role in abandoning legacy technologies like the floppy disk,"
      " serial ports, and Apple Desktop Bus in favor of Universal Serial Bus."
      " The product line was updated throughout 1998 until 2001 with new technology and colors,"
      " eventually being replaced by the iMac G4 and eMac.",
      infoPageData2Title: "History",
      infoPageData2: "Steve Jobs reduced the company's large product lines immediately upon becoming Apple's interim CEO in 1997."
      " Toward the end of the year, Apple trimmed its line of desktop Macs down from ten distinct models to four models of the Power Macintosh G3,"
      " which included the iMac's immediate predecessor, an educational market exclusive called the Power Macintosh G3 All-In-One. Having discontinued the consumer-targeted Performa series,"
      " Apple needed a replacement for the Performa's price point. The company announced the iMac on May 6, 1998[1] and began shipping the iMac G3 on August 15, 1998.\n\n"
      "Internally, the iMac was a combination of the MacNC project and Common Hardware Reference Platform (CHRP).[citation needed]"
      " Although the promise of CHRP has never been fully realized,"
      " the work that Apple had done on CHRP significantly helped in the designing of the iMac."
      " One change from CHRP for example was to boot classic Mac OS using a 4 MB Mac OS ROM file stored on disk."
      " The original iMac used a PowerPC G3 (PowerPC 750) processor, which also ran in Apple's high-end Power Macintosh line at the time,"
      " though at higher speeds. It sold for US\$1,299, and shipped with Mac OS 8.1, which was soon upgraded to Mac OS 8.5.",
      infoPageData3Title: "Design",
      infoPageData3: "The iMac was dramatically different from any previous mainstream computer."
      " It was made of translucent \"Bondi Blue\"-colored plastic,"
      " and was egg-shaped around a 15-inch (38.1 cm) CRT display."
      " The case included a handle, and the peripheral connectors were hidden behind a door on the right-hand side of the machine."
      " Dual headphone jacks in the front complemented the built-in stereo speakers. Danny Coster was the original designer of the product,"
      " and Jonathan Ive helped further the process. The iMac G3's unique shape and color options helped ingrain itself into late 1990s pop culture."
      " The iMac was the first computer to exclusively offer USB ports as standard,[2] including as the connector for its new keyboard and mouse,[3]"
      " thus abandoning previous Macintosh peripheral connections, such as the ADB, SCSI and GeoPort serial ports.",
    ));

    // 3
    data.add(PcData(
      imagePath: MyImages.macG4,
      model: "iMac G4",
      cpu: "PowerPc G4",
      ram: "256 MB",
      released: "August 2002",
      display: "1024x768",
      price: "1,999",
      infoPageImage2Path: MyImages.infoPageMacG4_2,
      infoPageImage3Path: MyImages.infoPageMacG4_3,
      infoPageData1: "The iMac G4 is an all-in-one personal computer designed, manufactured,"
      " and sold by Apple Computer, Inc. from January 2002 to August 2004."
      " It replaced the iMac G3 and was succeeded by the iMac G5.",
      infoPageData2Title: "Design and marketing",
      infoPageData2: "The iMac G4 featured an LCD mounted on an adjustable arm above a hemisphere containing a full-size,"
      " tray-loading optical drive and a fourth-generation PowerPC G4 74xx-series processor."
      " The internals such as the hard drive and motherboard were placed in the \"dome\" instead of the LCD panel as it would be too heavy."
      " The arm allowed the display to hold almost any angle around the dome-shaped bottom."
      " The iMac G4 was sold only in white, and was not translucent like the iMac G3."
      " The machine was sold with the Apple Pro Keyboard and Apple Pro Mouse,"
      " which were later redesigned and renamed the Apple Keyboard and Apple Mouse, respectively."
      " Optional Apple Pro Speakers, which were better quality than the internal speakers, were also available."
      " The Apple Pro Speakers used a unique adapter, designed to work only with a select few Apple Macintosh models.\n\n"
      "It was originally known as the New iMac, while the existing iMac G3 continued to be sold for several months."
      " During this time, Apple had all but eliminated CRT displays from its product line."
      " However, the LCD iMacs were unable to match the low price point of the iMac G3,"
      " largely due to the higher cost of the LCD technology at the time."
      " The iMac G3 was obsolete by this point, but low-cost machines were particularly important for the education market."
      " Because of this affordability issue, Apple created the eMac in April 2002 and ended production of the iMac G3."
      " The iMac G4 was then marketed as the \"iMac\" until its discontinuation,"
      " then was retroactively labeled iMac G4 to distinguish itself from the succeeding iMac G5 in August 2004.",
      infoPageData3Title: "Software",
      infoPageData3: "The iMac G4 originally included both Mac OS 9 and Mac OS X,"
      " due to the machine being released the year Mac OS 9 was discontinued."
      " When running newer versions of Mac OS X (Tiger and Leopard),"
      " the iMac G4's GeForce4 MX GPU was not capable of Core Image rendering."
      " This causes some minor graphical issues."
      " One such issue would be the lack of the Dashboard ripple effect when a widget is introduced."
      " Another would be an opaque menu bar in Mac OS X Leopard.",
    ));

    return data;
  }

  
}
