.class public Lcom/android/settings/homepage/contextualcards/SettingsContextualCardProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "getCardList"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object p1

    sget-object p3, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)V

    sget-object p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {p1, p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {v2, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    invoke-virtual {v3, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    invoke-virtual {v3, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    invoke-virtual {v3, p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p3

    const-string v0, "cardList"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p3, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->getCardList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {p3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getSliceUri()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0, p3}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GetType operation is not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert operation is not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Query operation is not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update operation is not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
