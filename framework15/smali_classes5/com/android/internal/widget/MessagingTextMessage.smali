.class public Lcom/android/internal/widget/MessagingTextMessage;
.super Lcom/android/internal/widget/ImageFloatingTextView;
.source "MessagingTextMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingTextMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPrecomputedText:Landroid/text/PrecomputedText;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Z)Lcom/android/internal/widget/MessagingMessage;
    .locals 5

    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    if-nez v1, :cond_0

    nop

    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900e4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingTextMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/MessagingTextMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    return-object v1
.end method

.method public static blacklist dropCache()V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    return-void
.end method


# virtual methods
.method public blacklist finalizeInflate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrecomputedText setText failed for TextView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessagingTextMessage"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public blacklist getConsumedLines()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1
.end method

.method public blacklist getMeasuredType()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayoutHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v4

    if-gt v4, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    return-void
.end method

.method public blacklist setColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextColor(I)V

    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMaxLines(I)V

    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
