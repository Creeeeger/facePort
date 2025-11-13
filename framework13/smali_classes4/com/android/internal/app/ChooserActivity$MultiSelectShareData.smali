.class Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectShareData"
.end annotation


# instance fields
.field blacklist imageCount:I

.field blacklist resolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field blacklist totalCount:I

.field blacklist videoCount:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    .line 13789
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13793
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$MultiSelectShareData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method


# virtual methods
.method blacklist append(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 13796
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13797
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_0

    .line 13799
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13801
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->totalCount:I

    .line 13802
    return-void
.end method

.method blacklist getImageVideoCount(I)V
    .locals 4
    .param p1, "key"    # I

    .line 13805
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 13806
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 13807
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13808
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_1

    .line 13810
    :cond_0
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13812
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 13814
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13815
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 13816
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_2

    .line 13818
    :cond_3
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    goto :goto_2

    .line 13821
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13822
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_2

    .line 13824
    :cond_5
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13828
    :goto_2
    return-void
.end method
