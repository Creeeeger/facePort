.class public Lcom/android/settingslib/users/AvatarPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AvatarPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;,
        Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;,
        Lcom/android/settingslib/users/AvatarPickerActivity$AvatarViewHolder;,
        Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

.field private mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

.field private mSaveButton:Landroid/widget/Button;

.field private mWaitingForActivityResult:Z


# direct methods
.method public static synthetic $r8$lambda$031WdMAGCXVc51hCSCQLdfhB4mQ(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->lambda$setUpButtons$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CV89dqCqprAV8tfizM8MfVYiNYA(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVzzKZGen1vT6vuyOs-AUE3a38E(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->lambda$setUpButtons$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0RJoXujIKM0V44dypwsBtrEmzg(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveButtonSetEnabled(Lcom/android/settingslib/users/AvatarPickerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getFileAuthority()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "file_authority"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "File authority must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize()V
    .locals 4

    .line 132
    sget v0, Lcom/android/settingslib/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 133
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 138
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 139
    sget v1, Lcom/android/settingslib/R$string;->avatar_picker_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canTakePhoto(Landroid/content/Context;)Z

    move-result v0

    .line 144
    invoke-static {p0}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canChoosePhoto(Landroid/content/Context;)Z

    move-result v1

    .line 146
    sget v2, Lcom/android/settingslib/R$id;->gallery_btn:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_1
    sget v1, Lcom/android/settingslib/R$id;->camera_btn:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    new-instance v0, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    invoke-virtual {p0}, Lcom/android/settingslib/users/AvatarPhotoController;->choosePhoto()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    invoke-virtual {p0}, Lcom/android/settingslib/users/AvatarPhotoController;->takePhoto()V

    return-void
.end method

.method private synthetic lambda$setUpButtons$2(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    invoke-static {p0}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->-$$Nest$mreturnSelectionResult(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;)V

    return-void
.end method

.method private synthetic lambda$setUpButtons$3(Landroid/view/View;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/settingslib/users/AvatarPickerActivity;->cancel()V

    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    const-string/jumbo v2, "selected_position"

    const/4 v3, -0x1

    .line 234
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->-$$Nest$fputmSelectedPosition(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;I)V

    .line 237
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    invoke-static {p1}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->-$$Nest$fgetmSelectedPosition(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;)I

    move-result p1

    if-eq p1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settingslib/users/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    :cond_1
    return-void
.end method

.method private saveButtonSetEnabled(Z)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

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

.method private setUpButtons()V
    .locals 2

    .line 184
    sget v0, Lcom/android/settingslib/R$id;->save_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/android/settingslib/users/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_0
    sget v0, Lcom/android/settingslib/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 191
    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 220
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/users/AvatarPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/android/settingslib/R$style;->Theme_SecSettings:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 103
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 105
    sget v0, Lcom/android/settingslib/R$layout;->sec_avatar_picker:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/settingslib/users/AvatarPickerActivity;->setUpButtons()V

    .line 109
    sget v0, Lcom/android/settingslib/R$id;->avatar_grid:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    iput-object v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 111
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$integer;->avatar_picker_columns:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v1, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 117
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 119
    invoke-direct {p0}, Lcom/android/settingslib/users/AvatarPickerActivity;->initialize()V

    .line 122
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/AvatarPickerActivity;->restoreState(Landroid/os/Bundle;)V

    .line 124
    new-instance p1, Lcom/android/settingslib/users/AvatarPhotoController;

    new-instance v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    invoke-direct {v0, p0}, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    new-instance v1, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;

    .line 126
    invoke-direct {p0}, Lcom/android/settingslib/users/AvatarPickerActivity;->getFileAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settingslib/users/AvatarPhotoController;-><init>(Lcom/android/settingslib/users/AvatarPhotoController$AvatarUi;Lcom/android/settingslib/users/AvatarPhotoController$ContextInjector;Z)V

    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settingslib/users/AvatarPickerActivity;->cancel()V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    const-string v1, "awaiting_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    invoke-static {v0}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->-$$Nest$fgetmSelectedPosition(Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;)I

    move-result v0

    const-string/jumbo v1, "selected_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method returnColorResult(I)V
    .locals 2

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "default_icon_tint_color"

    .line 266
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 267
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method returnUriResult(Landroid/net/Uri;)V
    .locals 1

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 260
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 254
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
