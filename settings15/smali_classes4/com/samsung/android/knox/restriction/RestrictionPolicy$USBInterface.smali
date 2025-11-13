.class public final enum Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USBInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;


# instance fields
.field private fullName:Ljava/lang/String;

.field private value:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .locals 19

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v2, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v3, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v4, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v5, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v6, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v7, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v8, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v9, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v10, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v11, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v12, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v13, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v14, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v15, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v16, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v17, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v18, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    filled-new-array/range {v0 .. v18}, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v1, 0x0

    const-string v2, "ALL_BLOCK"

    const-string v3, "ABL"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v1, 0x1

    const-string v2, "USB_CLASS_APP_SPEC"

    const-string v3, "APP"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v1, 0x2

    const-string v2, "USB_CLASS_AUDIO"

    const-string v3, "AUD"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "CDC"

    const/4 v2, 0x3

    const-string v3, "USB_CLASS_CDC_DATA"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "COM"

    const-string v2, "USB_CLASS_COMM"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "CON"

    const/4 v2, 0x5

    const-string v4, "USB_CLASS_CONTENT_SEC"

    const/16 v5, 0x10

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_CSCID"

    const/16 v2, 0x20

    const-string v4, "CSC"

    const/4 v6, 0x6

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_HID"

    const/16 v2, 0x40

    const-string v4, "HID"

    const/4 v6, 0x7

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_HUB"

    const/16 v2, 0x80

    const-string v4, "HUB"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_MASS_STORAGE"

    const/16 v2, 0x100

    const-string v3, "MAS"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_MISC"

    const/16 v2, 0x200

    const-string v3, "MIS"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_PER_INTERFACE"

    const/16 v2, 0x400

    const-string v3, "PER"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_PHYSICAL"

    const/16 v2, 0x800

    const-string v3, "PHY"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_PRINTER"

    const/16 v2, 0x1000

    const-string v3, "PRI"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_STILL_IMAGE"

    const/16 v2, 0x2000

    const-string v3, "STI"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_VENDOR_SPEC"

    const/16 v2, 0x4000

    const-string v3, "VEN"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_VIDEO"

    const v2, 0x8000

    const-string v3, "VID"

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "USB_CLASS_WIRELESS_CONTROLLER"

    const/high16 v2, 0x10000

    const-string v3, "WIR"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "ALL_OPEN"

    const v2, 0x1ffff

    const-string v3, "OFF"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-static {}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object v0
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    return p0
.end method
