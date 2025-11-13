.class public Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

.field public mAvatarPhotoController:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

.field public mSaveButton:Landroid/widget/Button;

.field public mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel$1$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final initButtons()V
    .locals 5

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    const v4, 0x44134000    # 589.0f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    const v4, 0x446fc000    # 959.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    const v4, 0x43cd8000    # 411.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x44700000    # 960.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x44520000    # 840.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0708e4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, p0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mWaitingForActivityResult:Z

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v2, "content"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid pictureUri scheme: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AvatarPhotoController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "172939189"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->cropPhoto(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->copyAndCropPhoto(Landroid/net/Uri;Z)V

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->copyAndCropPhoto(Landroid/net/Uri;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15067f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    const v0, 0x7f0d080c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->initButtons()V

    const v0, 0x7f0a0cea

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    invoke-direct {v2, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;)V

    iput-object v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;

    invoke-direct {v2, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v3, 0x7f140543

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "com.sec.android.gallery3d"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v1

    :goto_2
    const v4, 0x7f0a06c3

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v3, 0x7f0a02c5

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz p1, :cond_9

    const-string v0, "awaiting_result"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    const-string v3, "selected_position"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    iget p1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    if-eq p1, v4, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    :cond_9
    new-instance p1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file_authority"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "File authority must be provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mWaitingForActivityResult:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;Z)V

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->cancel$1$1()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    iget v0, v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    const-string v1, "selected_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final saveButtonSetEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mWaitingForActivityResult:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
