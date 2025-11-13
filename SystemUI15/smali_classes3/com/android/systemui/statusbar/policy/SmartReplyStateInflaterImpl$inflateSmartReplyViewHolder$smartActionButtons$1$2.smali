.class final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $delayOnClickListener:Z

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field final synthetic $smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field final synthetic $themedPackageContext:Landroid/view/ContextThemeWrapper;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ZLandroid/view/ContextThemeWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$delayOnClickListener:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$themedPackageContext:Landroid/view/ContextThemeWrapper;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object/from16 v7, p2

    check-cast v7, Landroid/app/Notification$Action;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$delayOnClickListener:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$themedPackageContext:Landroid/view/ContextThemeWrapper;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v9, 0x7f0d0440

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    iget-object v0, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07141d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->iconTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x6

    if-eq v0, v13, :cond_0

    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-eq v0, v14, :cond_0

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    new-instance v13, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;

    invoke-direct {v0, v11, v3, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)V

    invoke-direct {v13, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->iconTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v14, Lkotlin/Result;->$r8$clinit:I

    new-instance v14, Lkotlin/Result$Failure;

    invoke-direct {v14, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v14

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    if-nez v14, :cond_2

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v13, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    move-object v0, v13

    :goto_1
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SmartReplyViewInflater"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-object v0, v12

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :cond_4
    invoke-virtual {v0, v10, v10, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v0, v12, v12, v12}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ILandroid/app/Notification$Action;)V

    if-eqz v8, :cond_5

    new-instance v2, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-wide v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object v9
.end method
