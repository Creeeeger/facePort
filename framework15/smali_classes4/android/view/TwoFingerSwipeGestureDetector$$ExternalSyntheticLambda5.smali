.class public final synthetic Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;
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

    iput-object p1, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->$r8$lambda$ZIf8eno8V6Bug9gkVjLqvdm8nyU(Landroid/view/TwoFingerSwipeGestureDetector;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
