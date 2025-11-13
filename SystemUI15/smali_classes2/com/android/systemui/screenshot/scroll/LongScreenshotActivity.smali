.class public Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public mCancel:Landroid/view/View;

.field public mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

.field public mEdit:Landroid/view/View;

.field public mEnterTransitionView:Landroid/widget/ImageView;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

.field public final mLongScreenshotHolder:Lcom/android/systemui/screenshot/scroll/LongScreenshotData;

.field public mMagnifierView:Lcom/android/systemui/screenshot/scroll/MagnifierView;

.field public mOutputBitmap:Landroid/graphics/Bitmap;

.field public mPreview:Landroid/widget/ImageView;

.field public mSave:Landroid/view/View;

.field public mSavedImagePath:Ljava/io/File;

.field public mScreenshotUserHandle:Landroid/os/UserHandle;

.field public mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

.field public mShare:Landroid/view/View;

.field public mTransitionStarted:Z

.field public mTransitionView:Landroid/widget/ImageView;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static $r8$lambda$AKhoAjDWW24UTwZdM5QLD3oY6ZA(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSave:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEdit:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mShare:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f0a0a0f

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object p1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;->SAVE:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a03e5

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object p1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;->EDIT:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0b43

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object p1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;->SHARE:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0241

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/scroll/LongScreenshotData;Lcom/android/systemui/screenshot/ActionIntentExecutor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iput-object p5, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/scroll/LongScreenshotData;

    iput-object p6, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    return-void
.end method


# virtual methods
.method public final onCachedImageLoaded(Lcom/android/systemui/screenshot/scroll/ImageLoader$Result;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/scroll/ImageLoader$Result;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/scroll/MagnifierView;

    iget-object v2, p1, Lcom/android/systemui/screenshot/scroll/ImageLoader$Result;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/screenshot/scroll/ImageLoader$Result;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput-object v0, v1, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/screenshot/scroll/ImageLoader$Result;->mFilename:Ljava/io/File;

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSave:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEdit:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mShare:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    const v0, 0x7f0d01e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a0914

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0a0f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSave:Landroid/view/View;

    const v0, 0x7f0a03e5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEdit:Landroid/view/View;

    const v0, 0x7f0a0b43

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mShare:Landroid/view/View;

    const v0, 0x7f0a0241

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCancel:Landroid/view/View;

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/scroll/CropView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    const v0, 0x7f0a066d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/scroll/MagnifierView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/scroll/MagnifierView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iput-object v0, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

    const v0, 0x7f0a0d7b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSave:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCancel:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mShare:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0a09ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "capture-response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureResponse;

    iput-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    const-string/jumbo v1, "screenshot-userhandle"

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "saved-image-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Screenshot"

    const-string v0, "Missing saved state entry with key \'saved-image-path\'!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    new-instance p1, Lcom/android/systemui/screenshot/scroll/ImageLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/scroll/ImageLoader;-><init>(Landroid/content/ContentResolver;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    new-instance v0, Lcom/android/systemui/screenshot/scroll/ImageLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/scroll/ImageLoader$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "saved-image-path"

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 9

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 v1, 0x0

    const-string v2, "Screenshot"

    if-eqz v0, :cond_1

    const-string v0, "mCacheLoadFuture != null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    new-instance v2, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {v0, v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/scroll/LongScreenshotData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotData;->mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    if-nez v0, :cond_2

    const-string v0, "No long screenshot available!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Completed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;

    invoke-direct {v5, v3}, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/scroll/ImageTileSet;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/scroll/MagnifierView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v5, v5, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;

    invoke-direct {v6, v5}, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/scroll/ImageTileSet;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v5, v5, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    iget-object v5, v5, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v7, v7, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->getHeight()I

    move-result v7

    iput-object v6, v3, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v2, v2, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mTiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mTiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/scroll/ImageTile;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/scroll/ImageTile;->close()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    return-void
.end method

.method public final startExport(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "Screenshot"

    if-nez v1, :cond_0

    const-string v0, "No drawable, skipping export!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/screenshot/scroll/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Crop bounds empty, skipping export."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->updateImageDimensions()V

    new-instance v2, Landroid/graphics/RenderNode;

    const-string v4, "Bitmap Export"

    invoke-direct {v2, v4}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, v3, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    invoke-virtual {v4, v3}, Landroid/graphics/RecordingCanvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v11

    iget-object v15, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/systemui/screenshot/ImageExporter$Task;

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v8, v3, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    iget-object v12, v3, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v11, v12, v6}, Lcom/android/systemui/screenshot/ImageExporter;->createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v17

    iget v13, v3, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    const/4 v14, 0x1

    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageExporter;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v7, v2

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lcom/android/systemui/screenshot/ImageExporter$Task;-><init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;IZLandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/String;)V

    new-instance v3, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {v1, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final updateImageDimensions()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v1

    int-to-float v5, v3

    div-float v6, v4, v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    cmpl-float v9, v2, v6

    const/4 v10, 0x2

    if-lez v9, :cond_1

    mul-float/2addr v5, v6

    div-float/2addr v5, v2

    float-to-int v2, v5

    sub-int/2addr v3, v2

    div-int/2addr v3, v10

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iget-object v6, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v9, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v3

    iput v6, v5, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    iput v9, v5, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    add-int/2addr v8, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iput v1, v3, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    move v3, v2

    goto :goto_0

    :cond_1
    mul-float/2addr v4, v2

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v1, v4, v10, v7}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v7

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iget-object v6, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    iput v6, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    iput v9, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v5, v1

    move v11, v4

    move v4, v1

    move v1, v11

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v3

    int-to-float v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    int-to-float v3, v8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v2, v2, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    iget-object v2, v2, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    iget-object v3, v3, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/scroll/ScrollCaptureController$LongScreenshot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
