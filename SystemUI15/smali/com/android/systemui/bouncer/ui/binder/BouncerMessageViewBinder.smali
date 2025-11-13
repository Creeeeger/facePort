.class public final Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;->INSTANCE:Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$updateView(Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;Lcom/android/keyguard/KeyguardSecMessageAreaController;Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/systemui/bouncer/shared/model/Message;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p0, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_4

    if-eqz p3, :cond_2

    iget-object p0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    iget-object p0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->message:Ljava/lang/String;

    if-nez p0, :cond_5

    const-string p0, ""

    :cond_5
    iget-object v0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v1, p3, Lcom/android/systemui/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object v1, p3, Lcom/android/systemui/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    :cond_6
    iget-boolean v0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->animate:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :goto_2
    if-eqz p3, :cond_7

    iget-object p0, p3, Lcom/android/systemui/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_7

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    if-eqz p4, :cond_8

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_3

    :cond_8
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public static final bind(Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;-><init>(Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v6}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
