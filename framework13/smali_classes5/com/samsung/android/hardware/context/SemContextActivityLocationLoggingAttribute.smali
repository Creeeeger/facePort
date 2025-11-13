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

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 56
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 57
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 1
    .param p1, "stopPeriod"    # I
    .param p2, "waitPeriod"    # I
    .param p3, "stayingRadius"    # I
    .param p4, "areaRadius"    # I
    .param p5, "lppResolution"    # I

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 56
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 57
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 95
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 96
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 97
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 98
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 99
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 101
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 56
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 57
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 72
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const-string/jumbo v2, "stop_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const-string/jumbo v2, "wait_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const-string/jumbo v2, "staying_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const-string v2, "area_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    const-string v2, "lpp_resolution"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const/16 v1, 0x18

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 109
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/4 v1, 0x0

    const-string v2, "SemContextActivityLocationLoggingAttribute"

    if-gez v0, :cond_0

    .line 110
    const-string v0, "The stop period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1

    .line 113
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    if-gez v0, :cond_1

    .line 114
    const-string v0, "The wait period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v1

    .line 117
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mStayingRadius:I

    if-gez v0, :cond_2

    .line 118
    const-string v0, "The staying radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 121
    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mAreaRadius:I

    if-gez v0, :cond_3

    .line 122
    const-string v0, "The area radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1

    .line 125
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;->mLppResolution:I

    if-ltz v0, :cond_5

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    goto :goto_0

    .line 130
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_5
    :goto_0
    const-string v0, "The lpp resolution is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1
.end method
