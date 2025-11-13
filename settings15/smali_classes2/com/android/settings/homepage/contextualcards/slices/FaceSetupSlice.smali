.class public Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f1429d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f1417d0

    const-string v5, "face_settings"

    const/16 v1, 0x579

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0}, Landroidx/slice/builders/impl/ListBuilder;->setIsError()V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "face_unlock_re_enroll"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f1429d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1429d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f1429d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1429cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f1429cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1429cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v5, 0x1010435

    invoke-static {v3, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v5, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v5, v3}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const v5, 0x7f0803f1

    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/high16 v6, 0x4000000

    invoke-static {v5, v4, p0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, v3, v4, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v0, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v4, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v1, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v4, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    iput-object p0, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object p0, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v5}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0}, Landroidx/slice/builders/impl/ListBuilder;->setIsError()V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417d0

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method
