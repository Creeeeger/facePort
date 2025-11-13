.class public Landroid/hardware/scontext/SContextApproachAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextApproachAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextApproachAttribute"


# instance fields
.field private blacklist mUserID:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "userID"    # I

    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 51
    iput p1, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 52
    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    .line 53
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method
