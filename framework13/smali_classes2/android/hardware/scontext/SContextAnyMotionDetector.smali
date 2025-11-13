.class public Landroid/hardware/scontext/SContextAnyMotionDetector;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAnyMotionDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextAnyMotionDetector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/hardware/scontext/SContextAnyMotionDetector$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAnyMotionDetector$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAnyMotionDetector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAnyMotionDetector;->mContext:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 99
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAnyMotionDetector;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAnyMotionDetector;->mContext:Landroid/os/Bundle;

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist getAction()I
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/hardware/scontext/SContextAnyMotionDetector;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 120
    iput-object p1, p0, Landroid/hardware/scontext/SContextAnyMotionDetector;->mContext:Landroid/os/Bundle;

    .line 121
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/hardware/scontext/SContextAnyMotionDetector;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
