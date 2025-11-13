.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object p1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
