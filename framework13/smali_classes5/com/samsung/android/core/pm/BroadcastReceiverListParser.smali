.class public Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
.super Ljava/lang/Object;
.source "BroadcastReceiverListParser.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "BRListParser"

.field private static final blacklist TAG_ACTION:Ljava/lang/String; = "action"

.field private static final blacklist TAG_ALLOWED_PACKAGE:Ljava/lang/String; = "allowed-packages"

.field private static final blacklist TAG_INTENT:Ljava/lang/String; = "intent"

.field static final blacklist TAG_NAME:Ljava/lang/String; = "name"

.field private static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final blacklist TAG_RESTRICTED_INTENTS:Ljava/lang/String; = "restricted-intents"

.field private static final blacklist TAG_RESTRICTED_PACKAGE:Ljava/lang/String; = "restricted-packages"


# instance fields
.field private final blacklist mAllowedPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedPkgPrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPkgPrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedIntents:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgNames:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgPrefixNames:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgNames:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgPrefixNames:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public static blacklist hasPackageSSP(Landroid/content/IntentFilter;)Z
    .locals 1
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .line 291
    if-eqz p0, :cond_0

    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0
.end method

.method private blacklist isAllowedIntentOfPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isAllowedPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgPrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    return v1

    .line 137
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isPackageXXXIntent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 287
    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getPackageMap$0(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p0, "packageMap"    # Ljava/util/Map;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "packages"    # Ljava/util/Set;

    .line 65
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 68
    .local v2, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 69
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 71
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method

.method private blacklist parseAllowListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 179
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 180
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_a

    .line 182
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 183
    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "elementName":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "restricted-packages"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "restricted-intents"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v1, "allowed-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :sswitch_3
    const-string v1, "intent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    move v3, v5

    :goto_2
    const-string v1, ""

    const-string v5, "*"

    packed-switch v3, :pswitch_data_0

    .line 223
    nop

    .line 224
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseMetadataElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 225
    goto/16 :goto_7

    .line 211
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "restrictedPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 213
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    invoke-virtual {v7, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, "prefix":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgPrefixNames:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v8    # "prefix":Ljava/lang/String;
    goto :goto_4

    .line 217
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgNames:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v7    # "name":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 220
    :cond_5
    goto :goto_7

    .line 207
    .end local v3    # "restrictedPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseIntents(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "restrictedIntents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedIntents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    goto :goto_7

    .line 196
    .end local v1    # "restrictedIntents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "allowedPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 198
    .restart local v7    # "name":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 199
    invoke-virtual {v7, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .restart local v8    # "prefix":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgPrefixNames:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v8    # "prefix":Ljava/lang/String;
    goto :goto_6

    .line 202
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgNames:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v7    # "name":Ljava/lang/String;
    :goto_6
    goto :goto_5

    .line 205
    :cond_7
    goto :goto_7

    .line 189
    .end local v3    # "allowedPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    const/4 v1, 0x0

    const-string v3, "action"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "action":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7

    .line 228
    .end local v1    # "action":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BRListParser"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v4    # "elementName":Ljava/lang/String;
    :cond_9
    :goto_7
    goto/16 :goto_0

    .line 232
    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x468ec964 -> :sswitch_3
        0x107e3372 -> :sswitch_2
        0x44c2fde5 -> :sswitch_1
        0x5e60061f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseAllowListInternal(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/broadcast_allowlist.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "BRListParser"

    if-nez v1, :cond_1

    .line 159
    const-string v1, "No xml file exists."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 163
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "xmlFile":Ljava/io/File;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 170
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "xmlFile":Ljava/io/File;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 166
    :catch_2
    move-exception v3

    .line 167
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. XmlPullParserException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    nop

    .line 173
    :goto_2
    return-void
.end method

.method private blacklist parseIntents(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 267
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 270
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 272
    goto :goto_0

    .line 275
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "intent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    const/4 v4, 0x0

    const-string v5, "action"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 279
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 283
    :cond_4
    return-object v1
.end method


# virtual methods
.method public blacklist getAllowedPackageNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getAllowedPackagePrefixNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mAllowedPkgPrefixNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIntentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPackageMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 64
    .local v0, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mIntentMap:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/core/pm/BroadcastReceiverListParser$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 78
    return-object v0
.end method

.method public blacklist getRestricedIntent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRestrictedPackageNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRestrictedPackagePrefixNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgPrefixNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isInAllowList(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .line 103
    invoke-direct {p0, p2}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isAllowedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    return v1

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isAllowedIntentOfPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    return v1

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isPackageXXXIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->hasPackageSSP(Landroid/content/IntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    return v1

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInAllowList() Intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not in allowlist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRListParser"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInRestrictedPackageList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->mRestrictedPkgPrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    return v1

    .line 125
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist parseAllowList()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowList(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public blacklist parseAllowList(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowListInternal(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method blacklist parseMetadataElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method blacklist parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 244
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 247
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 249
    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 256
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 260
    :cond_4
    return-object v1
.end method
