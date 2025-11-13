.class public final Landroid/telephony/ims/SipDialogState$Builder;
.super Ljava/lang/Object;
.source "SipDialogState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDialogState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telephony/ims/SipDialogState$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDialogState$Builder;->mState:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/SipDialogState$Builder;->mState:I

    iput p1, p0, Landroid/telephony/ims/SipDialogState$Builder;->mState:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/SipDialogState;
    .locals 2

    new-instance v0, Landroid/telephony/ims/SipDialogState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/SipDialogState;-><init>(Landroid/telephony/ims/SipDialogState$Builder;Landroid/telephony/ims/SipDialogState-IA;)V

    return-object v0
.end method
