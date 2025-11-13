.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $suppress:Z

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iput-boolean p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->$suppress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-boolean v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    iget-boolean v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->$suppress:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-boolean p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;->$suppress:Z

    iput-boolean p0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    new-instance p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V

    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
