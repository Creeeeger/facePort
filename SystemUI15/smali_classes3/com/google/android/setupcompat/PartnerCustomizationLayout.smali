.class public Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field public activity:Landroid/app/Activity;

.field public useDynamicColor:Z

.field public useFullDynamicColorAttr:Z

.field public usePartnerResourceAttr:Z

.field final windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public static $r8$lambda$LkXYrnw5DYvjSfWXKSuSlNqcyss(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "screenName"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hash"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "focus"

    invoke-virtual {v3, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "timeInMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Screen "

    const-string v0, " report focus changed failed."

    invoke-static {p1, v1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "PartnerCustomizationLayout"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    const/4 p1, 0x0

    const p2, 0x7f040698

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init$2(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    const p1, 0x7f040698

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init$2(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init$2(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a0c9d

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getLayoutTypeMetrics()Landroid/os/PersistableBundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init$2(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucPartnerCustomizationLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_1
    new-instance v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/setupcompat/template/StatusBarMixin;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V

    const-class v1, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    new-instance v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    const-class v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerCustomizations(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    iget-object p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x8000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screenName"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intentAction"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v4, v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Screen "

    const-string v4, " bind back fail."

    invoke-static {v3, v2, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lifecycle_monitor"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    const-string v4, "LifecycleFragment"

    if-nez v3, :cond_0

    new-instance v5, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    invoke-direct {v5}, Lcom/google/android/setupcompat/internal/LifecycleFragment;-><init>()V

    :try_start_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error occurred when attach to Activity:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    instance-of v1, v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Incorrect instance on lifecycle fragment."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    check-cast v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_3
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Invisible"

    const-string v5, "Visible"

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v1, v4

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    :goto_3
    iput-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result p0

    iget-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p0, :cond_7

    move-object v4, v5

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    :cond_7
    :goto_4
    iput-object v4, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    return-void
.end method

.method public final onBeforeTemplateInflated(Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/R$styleable;->SucPartnerCustomizationLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Attribute sucUsePartnerResource not found in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "activity="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isSetupFlow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " enablePartnerResourceLoading=true usePartnerResourceAttr="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " useDynamicColor="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " useFullDynamicColorAttr="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SetupLibrary"

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/android/setupcompat/util/Logger;->prefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 9

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result v3

    iget-object v4, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v1, :cond_0

    const-string v3, "PrimaryFooterButton"

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "SecondaryFooterButton"

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_1
    sget-object v3, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "PrimaryButtonVisibility"

    iget-object v6, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SecondaryButtonVisibility"

    iget-object v0, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v5, v0, [Landroid/os/PersistableBundle;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    sget-object v3, Lcom/google/android/setupcompat/internal/PersistableBundles;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v0, [Landroid/os/PersistableBundle;

    aput-object v4, v0, v6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found duplicate key ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] while attempting to merge bundles."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SetupCompatMetrics"

    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/setupcompat/logging/CustomEvent;->create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const p2, 0x7f0d028b

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final shouldApplyDynamicColor()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldApplyPartnerResource()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final useFullDynamicColor()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
