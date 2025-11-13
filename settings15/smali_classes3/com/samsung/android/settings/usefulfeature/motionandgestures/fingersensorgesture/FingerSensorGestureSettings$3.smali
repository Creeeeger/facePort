.class public final Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$3;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$3;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
