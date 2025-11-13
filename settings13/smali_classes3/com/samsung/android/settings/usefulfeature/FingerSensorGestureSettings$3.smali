.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;
.super Ljava/lang/Object;
.source "FingerSensorGestureSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->createFingerGestureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

.field final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
