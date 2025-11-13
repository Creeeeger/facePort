.class public final synthetic Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->$r8$lambda$uYmdY5QDLuhOqJn0fu1NxbSprXE(Landroid/view/TwoFingerSwipeGestureDetector;FF)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
