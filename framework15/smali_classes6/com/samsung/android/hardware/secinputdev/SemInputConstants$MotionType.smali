.class public final enum Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
.super Ljava/lang/Enum;
.source "SemInputConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist APD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist AWD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist NONE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

.field public static final enum blacklist STREAM:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;


# instance fields
.field private blacklist feature:I

.field private blacklist name:Ljava/lang/String;

.field private blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .locals 10

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->AWD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v8, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->STREAM:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->APD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v4, "NONE"

    const/4 v5, 0x0

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v11, "PALM"

    const/high16 v12, 0x100000

    const-string v8, "PALM_MUTE"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v5, "PALM_SWIPE"

    const/high16 v6, 0x400000

    const-string v2, "PALM_SWIPE"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v11, "EAR_DETECTION"

    const/4 v12, 0x0

    const-string v8, "EAR_DETECTION"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v5, "GRIP_FILTER"

    const/4 v6, 0x0

    const-string v2, "GRIP_FILTER"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v11, "AIVF"

    const/high16 v12, 0x200000

    const-string v8, "AIVF"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v5, "AWD"

    const/high16 v6, 0x800000

    const-string v2, "AWD"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->AWD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v11, "CALLBACK"

    const/4 v12, -0x1

    const-string v8, "CALLBACK"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v5, "STREAM"

    const/4 v6, -0x1

    const-string v2, "STREAM"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->STREAM:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    const-string v11, "POCKET_DETECT"

    const/high16 v12, 0x80000

    const-string v8, "APD"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->APD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->$values()[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->value:I

    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->name:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->feature:I

    return-void
.end method

.method public static blacklist getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->values()[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static blacklist getFromName(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->values()[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFeatureEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->feature:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toInt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->value:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
