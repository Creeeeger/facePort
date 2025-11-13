.class public Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityLocationLoggingAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextActivityLocationLoggingAttribute"


# instance fields
.field private blacklist mAreaRadius:I

.field private blacklist mLppResolution:I

.field private blacklist mStayingRadius:I

.field private blacklist mStopPeriod:I

.field private blacklist mWaitPeriod:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stop_period"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wait_period"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "staying_radius"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "area_radius"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lpp_resolution"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/4 v1, 0x0

    const-string v2, "SemContextActivityLocationLoggingAttribute"

    if-gez v0, :cond_0

    const-string v0, "The stop period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    if-gez v0, :cond_1

    const-string v0, "The wait period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    if-gez v0, :cond_2

    const-string v0, "The staying radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    if-gez v0, :cond_3

    const-string v0, "The area radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const-string v0, "The lpp resolution is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
