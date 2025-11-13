.class public final Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
.super Ljava/lang/Object;
.source "PromptVerticalListContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/PromptVerticalListContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    return-void
.end method

.method private blacklist checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->doesListItemExceedsCharLimit(Landroid/hardware/biometrics/PromptContentItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of list items exceeds 20"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character number of list item exceeds 640"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist doesListItemExceedsCharLimit(Landroid/hardware/biometrics/PromptContentItem;)Z
    .locals 4

    instance-of v0, p1, Landroid/hardware/biometrics/PromptContentItemPlainText;

    const/4 v1, 0x1

    const/16 v2, 0x280

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentItemPlainText;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    :cond_3
    return v3
.end method


# virtual methods
.method public whitelist addListItem(Landroid/hardware/biometrics/PromptContentItem;)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V

    return-object p0
.end method

.method public whitelist addListItem(Landroid/hardware/biometrics/PromptContentItem;I)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V

    return-object p0
.end method

.method public whitelist build()Landroid/hardware/biometrics/PromptVerticalListContentView;
    .locals 4

    new-instance v0, Landroid/hardware/biometrics/PromptVerticalListContentView;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    iget-object v2, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V

    return-object v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mDescription:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character number of description exceeds 225"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
