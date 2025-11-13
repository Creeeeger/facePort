.class public final enum Lcom/samsung/android/settings/theftprotection/location/LocationType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/theftprotection/location/LocationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

.field public static final enum HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

.field public static final enum OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/theftprotection/location/LocationType;

.field public static final enum WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;


# instance fields
.field private final iconResID:I

.field private final nameResID:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    const v3, 0x7f14172c

    const v4, 0x7f080476

    const-string v5, "UNKNOWN"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/theftprotection/location/LocationType;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/theftprotection/location/LocationType;->UNKNOWN:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    new-instance v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    const v10, 0x7f141718

    const v11, 0x7f080477

    const-string v12, "HOME"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/theftprotection/location/LocationType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    new-instance v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    const v16, 0x7f14172d

    const v17, 0x7f080478

    const-string v18, "WORK"

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/theftprotection/location/LocationType;-><init>(IIIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    new-instance v2, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    const v10, 0x7f14171d

    const v11, 0x7f080476

    const-string v12, "OTHER"

    const/4 v8, 0x3

    const/4 v9, 0x4

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/theftprotection/location/LocationType;-><init>(IIIILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    filled-new-array {v6, v0, v1, v2}, [Lcom/samsung/android/settings/theftprotection/location/LocationType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->$VALUES:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value:I

    iput p3, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID:I

    iput p4, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->iconResID:I

    return-void
.end method

.method public static fromInt(I)Lcom/samsung/android/settings/theftprotection/location/LocationType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->values()[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->UNKNOWN:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/location/LocationType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/theftprotection/location/LocationType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->$VALUES:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/theftprotection/location/LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/theftprotection/location/LocationType;

    return-object v0
.end method


# virtual methods
.method public final iconResID()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->iconResID:I

    return p0
.end method

.method public final nameResID()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID:I

    return p0
.end method

.method public final value()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value:I

    return p0
.end method
