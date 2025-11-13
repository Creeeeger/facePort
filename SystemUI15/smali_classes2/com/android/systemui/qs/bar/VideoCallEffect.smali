.class public final Lcom/android/systemui/qs/bar/VideoCallEffect;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;


# static fields
.field public static final URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;


# instance fields
.field public final contentObserver:Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;

.field public final context:Landroid/content/Context;

.field public isCameraOpened:Z

.field public isVCEEnabled:Z

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

.field public videoCallEffectsButton:Landroid/view/View;

.field public videoCallEffectsContainer:Landroid/widget/LinearLayout;

.field public videoCallEffectsNum:Landroid/widget/TextView;

.field public videoCallEffectsText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/VideoCallEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/VideoCallEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "content://com.samsung.android.vtcamerasettings.VsetInfoProvider/VsetAppInfo/StatusInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/VideoCallEffect;->URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;-><init>(Lcom/android/systemui/qs/bar/VideoCallEffect;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->contentObserver:Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;

    return-void
.end method


# virtual methods
.method public final fini()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->contentObserver:Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unregisterContentObserver: exception occurred"

    const-string v1, "VideoCallEffect"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsButton:Landroid/view/View;

    return-object p0
.end method

.method public final inflate(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    const v3, 0x7f0d03c8

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0a0e11

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsText:Landroid/widget/TextView;

    const v0, 0x7f0a0e10

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsNum:Landroid/widget/TextView;

    const v0, 0x7f0a0e0c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsContainer:Landroid/widget/LinearLayout;

    move-object v1, p1

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsButton:Landroid/view/View;

    return-void
.end method

.method public final init()V
    .locals 4

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallEffect;->URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->contentObserver:Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallEffect;->parseVce(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "registerContentObserver: exception occurred: "

    const-string v1, "VideoCallEffect"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isVCEEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isCameraOpened:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final parseVce(Landroid/net/Uri;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "VideoCallEffect"

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v4, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "current position is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v4

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v8, -0x5ff074bf

    const-string v9, " -> "

    const-string v10, "parseVce: "

    if-eq v7, v8, :cond_b

    const v8, -0x3edd710e

    if-eq v7, v8, :cond_8

    const v4, -0x1101ca9

    if-eq v7, v4, :cond_6

    goto :goto_2

    :cond_6
    :try_start_2
    const-string v4, "camerastatus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OPEN"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isCameraOpened:Z

    iget-object v4, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_8
    const-string v7, "availablefunctions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsNum:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    if-lez v4, :cond_a

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f11001f

    invoke-virtual {v6, v8, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_2

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "true"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isVCEEnabled:Z

    iget-object v4, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_e
    :goto_3
    :try_start_3
    const-string v0, "cursor is null or number of cursor is less than 1"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isVCEEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isCameraOpened:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;-><init>(Lcom/android/systemui/qs/bar/VideoCallEffect;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final updateContents()V
    .locals 0

    return-void
.end method

.method public final updateFontScale()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0710f7

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsNum:Landroid/widget/TextView;

    const v0, 0x7f0710f6

    invoke-static {p0, v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1

    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    goto :goto_1

    :cond_1
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    :goto_1
    const/4 v3, 0x0

    iget v4, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    iget-boolean p2, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->micModeEnabled:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, p1, p2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    iget v3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsNum:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget p3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_8
    return-void
.end method

.method public final updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->videoCallEffectsButton:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isVCEEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect;->isCameraOpened:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
