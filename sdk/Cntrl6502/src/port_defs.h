// Definitions for accessing the driver ports for 6502 simulation

#define SimuBaseAddr		0x41210000

#define GPIOWr_Enable 		0x80000000
#define GPIOWr_Execute		0x40000000
#define GPIOWr_Read			0x20000000
#define GPIOWr_Reset		0x10000000
#define GPIOWr_RdEnable		0x04000000
#define GPIOWr_FIFOOutClk	0x02000000			//toggle to clock out data from read FIFO
#define GPIOWr_FIFOInClk	0x01000000			//toggle to clock data into command FIFO

#define GPIORd_Running		0x80000000
#define GPIORd_NotEmpty		0x40000000
#define GPIORd_Error		0x20000000
#define GPIORd_RdEnaAck		0x10000000

#define GPIOWrInactive		0x00000000
#define GPIORdIdleMask		0xF0000000

#define GPIODataMask		0x0000FFFF

#define P1None				0x00000000
#define P1EdgeRising		0x00001000
#define P1EdgeEna			0x00002000
#define P2EdgeRising		0x00004000
#define P2EdgeEna			0x00008000

#define SEL					0x00000800
#define MUX_IDB				0x00000000
#define MUX_ADL				0x00000100
#define MUX_ADH				0x00000200
#define MUX_CTRL0			0x00000300
#define MUX_CTRL1			0x00000400
#define MUX_ENA				0x00000500
#define MUX_PHIMASK			0x00000600
#define MUX_UNDEF			0x00000700
#define MUX_CTRL_OFFS		(MUX_CTRL1-MUX_CTRL0)

#define DPC30				0x0000
#define DPC31				0x0001
#define DPC32				0x0002
#define DPC33				0x0004
#define DPC37				0x0010
#define DPC38				0x0020
#define DPC39				0x0040
#define DPC40				0x0080
#define DPC36				0x0100

#define BUSMask				0x00FF
