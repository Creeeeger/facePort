.class public Landroid/content/pm/ShortcutInfo$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mActivity:Landroid/content/ComponentName;

.field private blacklist mCapabilityBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDisabledMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mDisabledMessageResId:I

.field private blacklist mExcludedSurfaces:I

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mIntents:[Landroid/content/Intent;

.field private blacklist mIsLongLived:Z

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private blacklist mPersons:[Landroid/app/Person;

.field private greylist-max-o mRank:I

.field private blacklist mStartingThemeResId:I

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextResId:I

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleResId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilityBindings(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCategories(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabledMessage(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabledMessageResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludedSurfaces(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExcludedSurfaces:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntents(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLongLived(Landroid/content/pm/ShortcutInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIsLongLived:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocusId(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/LocusId;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersons(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/app/Person;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mPersons:[Landroid/app/Person;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRank(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mStartingThemeResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1093
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    .line 1094
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1114
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    .line 1115
    const-string v0, "id cannot be empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    .line 1116
    return-void
.end method


# virtual methods
.method public whitelist addCapabilityBinding(Landroid/content/pm/Capability;Landroid/content/pm/CapabilityParams;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 4
    .param p1, "capability"    # Landroid/content/pm/Capability;
    .param p2, "capabilityParams"    # Landroid/content/pm/CapabilityParams;

    .line 1460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1462
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    .line 1464
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1465
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    :cond_1
    if-nez p2, :cond_2

    .line 1468
    return-object p0

    .line 1470
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1471
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/content/pm/CapabilityParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/CapabilityParams;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    return-object p0
.end method

.method public whitelist build()Landroid/content/pm/ShortcutInfo;
    .locals 2

    .line 1496
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo-IA;)V

    return-object v0
.end method

.method public whitelist setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 1158
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    .line 1159
    return-object p0
.end method

.method public whitelist setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation

    .line 1321
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    .line 1322
    return-object p0
.end method

.method public whitelist setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;

    .line 1299
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "disabledMessageResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1301
    nop

    .line 1302
    const-string v0, "disabledMessage cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 1304
    return-object p0
.end method

.method public greylist-max-o setDisabledMessageResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "disabledMessageResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1286
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "disabledMessage already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1287
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    .line 1288
    return-object p0
.end method

.method public whitelist setExcludedFromSurfaces(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "surfaces"    # I

    .line 1487
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExcludedSurfaces:I

    .line 1488
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 1442
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1443
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1184
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1185
    return-object p0
.end method

.method public greylist-max-o setId(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    const-string v0, "id cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    .line 1104
    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1345
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1362
    const-string v0, "intents cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1363
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "intents cannot be empty"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1365
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "intents cannot contain null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1366
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent\'s action must be set"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->-$$Nest$smcloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    .line 1370
    return-object p0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 1127
    const-string v0, "locusId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 1128
    return-object p0
.end method

.method public whitelist setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "longLabel"    # Ljava/lang/CharSequence;

    .line 1251
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "longLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1252
    const-string v0, "longLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    .line 1253
    return-object p0
.end method

.method public greylist-max-o setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "longLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1234
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "longLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1235
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    .line 1236
    return-object p0
.end method

.method public whitelist setLongLived(Z)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "longLived"    # Z

    .line 1416
    iput-boolean p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIsLongLived:Z

    .line 1417
    return-object p0
.end method

.method public whitelist setPerson(Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "person"    # Landroid/app/Person;

    .line 1389
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 4
    .param p1, "persons"    # [Landroid/app/Person;

    .line 1400
    const-string/jumbo v0, "persons cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1401
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "persons cannot be empty"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1402
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1403
    .local v2, "person":Landroid/app/Person;
    const-string/jumbo v3, "persons cannot contain null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1402
    .end local v2    # "person":Landroid/app/Person;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->-$$Nest$smclonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mPersons:[Landroid/app/Person;

    .line 1406
    return-object p0
.end method

.method public whitelist setRank(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "rank"    # I

    .line 1428
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Rank cannot be negative or bigger than MAX_RANK"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1430
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1431
    return-object p0
.end method

.method public whitelist setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;

    .line 1223
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "shortLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1224
    const-string/jumbo v0, "shortLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1225
    return-object p0
.end method

.method public greylist-max-o setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "shortLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "shortLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1204
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    .line 1205
    return-object p0
.end method

.method public whitelist setStartingTheme(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "themeResId"    # I

    .line 1193
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mStartingThemeResId:I

    .line 1194
    return-object p0
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1271
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTextResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1277
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1259
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTitleResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1265
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method
