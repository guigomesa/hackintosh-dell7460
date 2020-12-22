/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of d:/EFI/OC/ACPI/SSDT-PMC.aml, Thu Dec 17 11:53:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019E (414)
 *     Revision         0x02
 *     Checksum         0x24
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "PMCR"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "PMCR", 0x00001000)
{
    External (_SB_.PCI0.LPC0, DeviceObj)
    External (_SB_.PCI0.LPC_, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)

    If (CondRefOf (\_SB.PCI0.LPCB))
    {
        Scope (_SB.PCI0.LPCB)
        {
            Device (PMCR)
            {
                Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0))
    {
        Scope (_SB.PCI0.LPC0)
        {
            Device (PMCR)
            {
                Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC))
    {
        Scope (_SB.PCI0.LPC)
        {
            Device (PMCR)
            {
                Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
            }
        }
    }
}

