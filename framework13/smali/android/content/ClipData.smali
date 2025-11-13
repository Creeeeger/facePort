.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o MIMETYPES_TEXT_HTML:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_URILIST:[Ljava/lang/String;


# instance fields
.field private blacklist mCallingPackageName:Ljava/lang/String;

.field private blacklist mCallingUserId:I

.field final greylist-max-o mClipDescription:Landroid/content/ClipDescription;

.field final greylist-max-o mIcon:Landroid/graphics/Bitmap;

.field final greylist-max-o mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcelItemActivityInfos:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    const-string/jumbo v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "text/html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "text/vnd.android.intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    .line 1320
    new-instance v0, Landroid/content/ClipData$1;

    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipData;)V
    .locals 2
    .param p1, "other"    # Landroid/content/ClipData;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 836
    iget-object v0, p1, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 837
    iget-object v0, p1, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 839
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 801
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 802
    if-eqz p2, :cond_0

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 807
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 809
    return-void

    .line 803
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 821
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 822
    if-eqz p2, :cond_0

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 826
    iput-object p2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 827
    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 1291
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1295
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 1297
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 1298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1299
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1300
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1301
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 1302
    .local v3, "htmlText":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1303
    .local v4, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1304
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    .line 1305
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    sget-object v7, Landroid/view/textclassifier/TextLinks;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textclassifier/TextLinks;

    .line 1306
    .local v7, "textLinks":Landroid/view/textclassifier/TextLinks;
    new-instance v8, Landroid/content/ClipData$Item;

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 1307
    .local v8, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v8, v6}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 1308
    invoke-virtual {v8, v7}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1309
    iget-object v9, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "htmlText":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "textLinks":Landroid/view/textclassifier/TextLinks;
    .end local v8    # "item":Landroid/content/ClipData$Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1314
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 1315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/ClipData;->mCallingPackageName:Ljava/lang/String;

    .line 1318
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "item"    # Landroid/content/ClipData$Item;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 784
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 785
    if-eqz p3, :cond_0

    .line 788
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 790
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 792
    return-void

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "realType":Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 931
    if-eqz v1, :cond_1

    .line 932
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 933
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    move-object v0, v3

    goto :goto_0

    .line 934
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 935
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 936
    .local v4, "tmp":[Ljava/lang/String;
    aput-object v1, v4, v2

    .line 937
    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    move-object v0, v4

    .line 942
    .end local v1    # "realType":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 943
    sget-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 945
    :cond_2
    return-object v0
.end method

.method private blacklist isStyledText()Z
    .locals 4

    .line 1151
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1152
    return v1

    .line 1154
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1155
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 1156
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 1157
    .local v2, "spanned":Landroid/text/Spanned;
    invoke-static {v2}, Landroid/text/TextUtils;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1158
    const/4 v1, 0x1

    return v1

    .line 1161
    .end local v2    # "spanned":Landroid/text/Spanned;
    :cond_1
    return v1
.end method

.method public static whitelist newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 884
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 885
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 897
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 898
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 868
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 869
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 960
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 961
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 914
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 915
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-static {p0, p2}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "mimeTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v2
.end method


# virtual methods
.method public whitelist addItem(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .line 981
    if-eqz p1, :cond_1

    .line 984
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 988
    :cond_0
    return-void

    .line 982
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 999
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1001
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1007
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1011
    :cond_2
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1014
    :cond_3
    return-void
.end method

.method public greylist-max-o collectUris(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1237
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1238
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1240
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1241
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1245
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1246
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1247
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1250
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1237
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist copyForTransferWithActivityInfo()Landroid/content/ClipData;
    .locals 2

    .line 846
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, p0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 847
    .local v0, "copy":Landroid/content/ClipData;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    .line 848
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1217
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1219
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    if-eqz v2, :cond_0

    .line 1220
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ClipDescription;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1222
    :cond_0
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1223
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1224
    .local v2, "iToken":J
    const-wide v4, 0x10500000001L

    iget-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1225
    const-wide v4, 0x10500000002L

    iget-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1226
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1228
    .end local v2    # "iToken":J
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1229
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData$Item;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ClipData$Item;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1233
    return-void
.end method

.method public greylist-max-o fixUris(I)V
    .locals 4
    .param p1, "contentUserHint"    # I

    .line 1113
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1114
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1115
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1116
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1117
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->fixUris(I)V

    .line 1119
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 1121
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1122
    goto :goto_1

    .line 1125
    :cond_1
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 1114
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1128
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public greylist-max-o fixUrisLight(I)V
    .locals 6
    .param p1, "contentUserHint"    # I

    .line 1135
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1136
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1137
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1138
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1139
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1140
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1141
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1144
    .end local v3    # "data":Landroid/net/Uri;
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 1145
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 1136
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1148
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 1060
    iget-object v0, p0, Landroid/content/ClipData;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallingUserId()I
    .locals 1

    .line 1050
    iget v0, p0, Landroid/content/ClipData;->mCallingUserId:I

    return v0
.end method

.method public whitelist getDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public greylist getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getItemAt(I)Landroid/content/ClipData$Item;
    .locals 1
    .param p1, "index"    # I

    .line 1034
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    return-object v0
.end method

.method public whitelist getItemCount()I
    .locals 1

    .line 1026
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist prepareToEnterProcess(Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1100
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1101
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1102
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1103
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1106
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 1101
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(Z)V
    .locals 1
    .param p1, "leavingPackage"    # Z

    .line 1071
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 1072
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(ZI)V
    .locals 5
    .param p1, "leavingPackage"    # Z
    .param p2, "intentFlags"    # I

    .line 1080
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1081
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1082
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1083
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1084
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 1086
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 1087
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v3

    const-string v4, "ClipData.Item.getUri()"

    if-eqz v3, :cond_1

    .line 1088
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 1090
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1091
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    .line 1081
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist setCallingPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1055
    iput-object p1, p0, Landroid/content/ClipData;->mCallingPackageName:Ljava/lang/String;

    .line 1056
    return-void
.end method

.method public blacklist setCallingUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1045
    iput p1, p0, Landroid/content/ClipData;->mCallingUserId:I

    .line 1046
    return-void
.end method

.method public greylist-max-o setItemAt(ILandroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 1039
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1040
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 1182
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    .local v0, "first":Z
    goto :goto_0

    .line 1185
    .end local v0    # "first":Z
    :cond_0
    const/4 v0, 0x1

    .line 1187
    .restart local v0    # "first":Z
    :goto_0
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    .line 1188
    if-nez v0, :cond_1

    .line 1189
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    :cond_1
    const/4 v0, 0x0

    .line 1192
    const-string v2, "I:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1194
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1197
    :cond_2
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 1198
    if-nez v0, :cond_3

    .line 1199
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1201
    :cond_3
    const/4 v0, 0x0

    .line 1202
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1205
    if-nez v0, :cond_5

    .line 1206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1208
    :cond_5
    const/4 v0, 0x0

    .line 1209
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1210
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 1211
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1213
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1168
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 1170
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist willParcelWithActivityInfo()Z
    .locals 1

    .line 856
    iget-boolean v0, p0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1263
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1264
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1265
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1268
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    :goto_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1271
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1273
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1274
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1275
    iget-object v3, v2, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1276
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1277
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1278
    iget-boolean v3, p0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/content/ClipData$Item;->-$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1279
    invoke-static {v2}, Landroid/content/ClipData$Item;->-$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1272
    .end local v2    # "item":Landroid/content/ClipData$Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1284
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Landroid/content/ClipData;->mCallingUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v1, p0, Landroid/content/ClipData;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    return-void
.end method
