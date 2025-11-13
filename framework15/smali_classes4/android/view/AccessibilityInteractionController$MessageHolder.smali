.class final Landroid/view/AccessibilityInteractionController$MessageHolder;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHolder"
.end annotation


# instance fields
.field final greylist-max-o mInterrogatingPid:I

.field final greylist-max-o mInterrogatingTid:J

.field final greylist-max-o mMessage:Landroid/os/Message;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Message;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iput p2, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iput-wide p3, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    return-void
.end method
