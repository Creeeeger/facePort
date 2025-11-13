.class public final Landroid/service/controls/templates/ThumbnailTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ThumbnailTemplate.java"


# static fields
.field private static final blacklist KEY_ACTIVE:Ljava/lang/String; = "key_active"

.field private static final blacklist KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "key_content_description"

.field private static final blacklist KEY_ICON:Ljava/lang/String; = "key_icon"

.field private static final blacklist TYPE:I = 0x3


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mThumbnail:Landroid/graphics/drawable/Icon;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    const-string/jumbo v0, "key_icon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    const-string/jumbo v0, "key_content_description"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    iput-object p3, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method private blacklist rescaleThumbnail(II)V
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    return-void
.end method


# virtual methods
.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_active"

    iget-boolean v2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "key_icon"

    iget-object v2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "key_content_description"

    iget-object v2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist getTemplateType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public whitelist getThumbnail()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    return v0
.end method

.method public blacklist prepareTemplateForBinder(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/service/controls/templates/ThumbnailTemplate;->rescaleThumbnail(II)V

    return-void
.end method
