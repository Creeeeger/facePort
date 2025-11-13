.class public abstract Landroid/view/WindowInsetsAnimation$Callback;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsetsAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback$DispatchMode;
    }
.end annotation


# static fields
.field public static final whitelist DISPATCH_MODE_CONTINUE_ON_SUBTREE:I = 0x1

.field public static final whitelist DISPATCH_MODE_STOP:I


# instance fields
.field private final blacklist mDispatchMode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowInsetsAnimation$Callback;->mDispatchMode:I

    return-void
.end method


# virtual methods
.method public final whitelist getDispatchMode()I
    .locals 1

    iget v0, p0, Landroid/view/WindowInsetsAnimation$Callback;->mDispatchMode:I

    return v0
.end method

.method public whitelist onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation
.end method

.method public whitelist onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    return-object p2
.end method
