.class public abstract Lcom/android/settings/network/apn/ApnTypes;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APN_TYPES:[Ljava/lang/String;

.field public static final PreSelectedTypes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v11, "xcap"

    const-string v12, "vsim"

    const-string v0, "default"

    const-string v1, "mms"

    const-string v2, "supl"

    const-string v3, "dun"

    const-string v4, "hipri"

    const-string v5, "fota"

    const-string v6, "ims"

    const-string v7, "cbs"

    const-string v8, "ia"

    const-string v9, "emergency"

    const-string v10, "mcx"

    const-string v13, "bip"

    const-string v14, "enterprise"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    const-string v5, "hipri"

    const-string v6, "fota"

    const-string v1, "default"

    const-string v2, "mms"

    const-string v3, "supl"

    const-string v4, "dun"

    const-string v7, "cbs"

    const-string v8, "xcap"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnTypes;->PreSelectedTypes:Ljava/util/Set;

    return-void
.end method

.method public static splitToList(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2c

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Lkotlin/text/StringsKt___StringsKt;->split$default(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt___StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v4}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/intl/Locale;

    iget-object v4, v4, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    move v4, v3

    :goto_1
    const/16 v5, 0xf

    if-ge v4, v5, :cond_4

    aget-object v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v3, v0

    goto :goto_2

    :cond_2
    return-object p0

    :cond_3
    add-int/2addr v4, v0

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
