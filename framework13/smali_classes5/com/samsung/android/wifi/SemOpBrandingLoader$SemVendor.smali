.class public final enum Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
.super Ljava/lang/Enum;
.source "SemOpBrandingLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemOpBrandingLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist AIO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist AIS:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist ATO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist ATT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist CHA:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist CMCC:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final blacklist COUNTRY_CHINA:I = 0x3

.field public static final blacklist COUNTRY_JAPAN:I = 0x4

.field public static final blacklist COUNTRY_KOREA:I = 0x1

.field public static final blacklist COUNTRY_OTHERS:I = 0x5

.field public static final blacklist COUNTRY_USA:I = 0x2

.field public static final enum blacklist DCM:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist KOO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist LGU:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist MTR:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist SKT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist SingTel:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist TMB:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist TMK:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field public static final enum blacklist VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private final blacklist country:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 192
    new-instance v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v1, "SKT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->SKT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 193
    new-instance v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v4, "KTT"

    invoke-direct {v1, v4, v3, v3}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 194
    new-instance v4, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v5, "LGU"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->LGU:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 195
    new-instance v5, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v7, "KOO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KOO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 196
    new-instance v7, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v9, "VZW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 197
    new-instance v9, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v11, "ATT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v6}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->ATT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 198
    new-instance v11, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v13, "TMB"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v6}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->TMB:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 199
    new-instance v13, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v15, "MTR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v6}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->MTR:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 200
    new-instance v15, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v14, "TMK"

    const/16 v3, 0x8

    invoke-direct {v15, v14, v3, v6}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->TMK:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 204
    new-instance v14, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v3, "ATO"

    const/16 v6, 0x9

    invoke-direct {v14, v3, v6, v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->ATO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 205
    new-instance v3, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v6, "CHA"

    const/16 v2, 0xa

    invoke-direct {v3, v6, v2, v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->CHA:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 206
    new-instance v6, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v2, "AIO"

    const/16 v10, 0xb

    invoke-direct {v6, v2, v10, v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->AIO:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 207
    new-instance v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v10, "SingTel"

    const/16 v8, 0xc

    invoke-direct {v2, v10, v8, v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->SingTel:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 208
    new-instance v10, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v8, "AIS"

    move-object/from16 v17, v2

    const/16 v2, 0xd

    invoke-direct {v10, v8, v2, v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->AIS:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 209
    new-instance v8, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v2, "CMCC"

    const/16 v12, 0xe

    move-object/from16 v18, v10

    const/4 v10, 0x3

    invoke-direct {v8, v2, v12, v10}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->CMCC:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 210
    new-instance v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v10, "DCM"

    const/16 v12, 0xf

    move-object/from16 v19, v8

    const/4 v8, 0x4

    invoke-direct {v2, v10, v12, v8}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->DCM:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 211
    new-instance v8, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const-string v10, "Unknown"

    const/16 v12, 0x10

    move-object/from16 v20, v2

    const/4 v2, 0x5

    invoke-direct {v8, v10, v12, v2}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 191
    const/16 v10, 0x11

    new-array v10, v10, [Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const/16 v16, 0x0

    aput-object v0, v10, v16

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v4, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    aput-object v9, v10, v2

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    const/16 v0, 0xa

    aput-object v3, v10, v0

    const/16 v0, 0xb

    aput-object v6, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    aput-object v8, v10, v12

    sput-object v10, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->$VALUES:[Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "country"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->country:I

    .line 222
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 191
    const-class v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 1

    .line 191
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->$VALUES:[Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-virtual {v0}, [Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method


# virtual methods
.method public blacklist getCountry()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->country:I

    return v0
.end method
