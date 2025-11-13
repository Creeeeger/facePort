.class public Landroid/content/pm/AppSearchShortcutInfo;
.super Landroid/app/appsearch/GenericDocument;
.source "AppSearchShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AppSearchShortcutInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist IS_DISABLED:Ljava/lang/String; = "Dis"

.field public static final blacklist IS_DYNAMIC:Ljava/lang/String; = "Dyn"

.field public static final blacklist IS_IMMUTABLE:Ljava/lang/String; = "Im"

.field public static final blacklist IS_MANIFEST:Ljava/lang/String; = "Man"

.field public static final blacklist KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final blacklist KEY_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final blacklist KEY_CAPABILITY_BINDINGS:Ljava/lang/String; = "capabilityBindings"

.field public static final blacklist KEY_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final blacklist KEY_DISABLED_MESSAGE:Ljava/lang/String; = "disabledMessage"

.field public static final blacklist KEY_DISABLED_REASON:Ljava/lang/String; = "disabledReason"

.field public static final blacklist KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final blacklist KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final blacklist KEY_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field public static final blacklist KEY_ICON_RES_NAME:Ljava/lang/String; = "iconResName"

.field public static final blacklist KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field public static final blacklist KEY_INTENTS:Ljava/lang/String; = "intents"

.field public static final blacklist KEY_INTENT_PERSISTABLE_EXTRAS:Ljava/lang/String; = "intentPersistableExtras"

.field public static final blacklist KEY_LOCUS_ID:Ljava/lang/String; = "locusId"

.field public static final blacklist KEY_LONG_LABEL:Ljava/lang/String; = "longLabel"

.field public static final blacklist KEY_PERSON:Ljava/lang/String; = "person"

.field public static final blacklist KEY_SHORT_LABEL:Ljava/lang/String; = "shortLabel"

.field public static final blacklist NOT_DISABLED:Ljava/lang/String; = "nDis"

.field public static final blacklist NOT_DYNAMIC:Ljava/lang/String; = "nDyn"

.field public static final blacklist NOT_IMMUTABLE:Ljava/lang/String; = "nIm"

.field public static final blacklist NOT_MANIFEST:Ljava/lang/String; = "nMan"

.field public static final blacklist SCHEMA:Landroid/app/appsearch/AppSearchSchema;

.field public static final blacklist SCHEMA_TYPE:Ljava/lang/String; = "Shortcut"

.field public static final blacklist SCHEMA_VERSION:I = 0x3

.field public static final blacklist SHORTCUT_TTL:J


# direct methods
.method public static synthetic blacklist $r8$lambda$kireZJaXE6bkXyhT89ZMVSaoMx4(Landroid/content/pm/AppSearchShortcutInfo;[B)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->transformToBundle([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smflattenFlags(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->flattenFlags(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B
    .locals 0

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->transformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    const-string v1, "Shortcut"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v2, "activity"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "shortLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "longLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledMessage"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "categories"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "intents"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string v5, "intentPersistableExtras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    const-string/jumbo v5, "person"

    const-string v6, "ShortcutPerson"

    invoke-direct {v1, v5, v6}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "locusId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string v5, "extras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "flags"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    const-string v5, "iconResId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "iconResName"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "iconUri"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledReason"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capability"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capabilityBindings"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    sput-object v0, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-void
.end method

.method private static blacklist flagToString(II)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const-string v0, "Im"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "nIm"

    :goto_0
    return-object v0

    :sswitch_1
    and-int v0, p0, p1

    if-eqz v0, :cond_1

    const-string v0, "Dis"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "nDis"

    :goto_1
    return-object v0

    :sswitch_2
    and-int v0, p0, p1

    if-eqz v0, :cond_2

    const-string v0, "Man"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "nMan"

    :goto_2
    return-object v0

    :sswitch_3
    and-int v0, p0, p1

    if-eqz v0, :cond_3

    const-string v0, "Dyn"

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "nDyn"

    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist flattenFlags(I)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->flagToString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;
    .locals 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    sget-wide v1, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$parseCapabilityBindings$3(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6, v4}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$toShortcutInfo$0(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$1(I)[Landroid/content/Intent;
    .locals 1

    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$2(I)[Landroid/os/Bundle;
    .locals 1

    new-array v0, p0, [Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist parseFlag(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "Man"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "Dyn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "Dis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "Im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x100

    return v0

    :pswitch_1
    const/16 v0, 0x40

    return v0

    :pswitch_2
    const/16 v0, 0x20

    return v0

    :pswitch_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x944 -> :sswitch_3
        0x10c6e -> :sswitch_2
        0x10e59 -> :sswitch_1
        0x12d3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseFlags([Ljava/lang/String;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlag(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static blacklist parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/Person;

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-direct {v3, v2}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    invoke-virtual {v3}, Landroid/content/pm/AppSearchShortcutPerson;->toPerson()Landroid/app/Person;

    move-result-object v4

    aput-object v4, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/appsearch/GenericDocument;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist transformToBundle([B)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method private static blacklist transformToByteArray(Landroid/os/PersistableBundle;)[B
    .locals 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist transformToPersistableBundle([B)Landroid/os/PersistableBundle;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public blacklist toShortcutInfo(I)Landroid/content/pm/ShortcutInfo;
    .locals 54

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/AppSearchShortcutInfo;->getNamespace()Ljava/lang/String;

    move-result-object v32

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/4 v1, 0x0

    if-nez v33, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-static/range {v33 .. v33}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    move-object v5, v2

    :goto_0
    const/16 v34, 0x0

    const-string/jumbo v2, "shortLabel"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v2, "longLabel"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v2, "disabledMessage"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v2, "categories"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    if-nez v38, :cond_1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v2

    :goto_1
    const-string v2, "intents"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    const/4 v2, 0x0

    if-nez v39, :cond_2

    new-array v3, v2, [Landroid/content/Intent;

    goto :goto_2

    :cond_2
    nop

    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    :goto_2
    move-object v13, v3

    const-string v3, "intentPersistableExtras"

    invoke-virtual {v0, v3}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytesArray(Ljava/lang/String;)[[B

    move-result-object v40

    if-nez v40, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    nop

    invoke-static/range {v40 .. v40}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/AppSearchShortcutInfo;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    :goto_3
    move-object v10, v3

    if-eqz v13, :cond_6

    const/4 v3, 0x0

    :goto_4
    array-length v4, v13

    if-ge v3, v4, :cond_6

    aget-object v4, v13, v3

    if-eqz v4, :cond_5

    if-eqz v10, :cond_5

    array-length v6, v10

    if-le v6, v3, :cond_5

    aget-object v6, v10, v3

    if-eqz v6, :cond_5

    aget-object v6, v10, v3

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    aget-object v6, v10, v3

    invoke-virtual {v4, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const-string/jumbo v3, "person"

    invoke-virtual {v0, v3}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyDocumentArray(Ljava/lang/String;)[Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/AppSearchShortcutInfo;->parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;

    move-result-object v41

    const-string/jumbo v3, "locusId"

    invoke-virtual {v0, v3}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_7
    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v29, v1

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/content/pm/AppSearchShortcutInfo;->transformToPersistableBundle([B)Landroid/os/PersistableBundle;

    move-result-object v42

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlags([Ljava/lang/String;)I

    move-result v43

    const-string v1, "iconResId"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v4, v3

    const-string v1, "iconResName"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v1, "iconUri"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const-string v1, "disabledReason"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    goto :goto_7

    :cond_8
    move/from16 v27, v2

    :goto_7
    nop

    nop

    const-string v1, "capabilityBindings"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/AppSearchShortcutInfo;->parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v47

    move-object/from16 v31, v47

    new-instance v48, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v1, v48

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/AppSearchShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/AppSearchShortcutInfo;->getCreationTimestampMillis()J

    move-result-wide v20

    const/16 v25, 0x0

    const/16 v30, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v18, 0x7fffffff

    move/from16 v2, p1

    move/from16 v49, v4

    move-object/from16 v4, v32

    move-object/from16 v50, v6

    move-object/from16 v6, v34

    move-object/from16 v51, v7

    move-object/from16 v7, v35

    move-object/from16 v52, v10

    move-object/from16 v10, v36

    move-object/from16 v53, v13

    move-object/from16 v13, v37

    move-object/from16 v17, v53

    move-object/from16 v19, v42

    move/from16 v22, v43

    move/from16 v23, v49

    move-object/from16 v24, v44

    move-object/from16 v26, v45

    move-object/from16 v28, v41

    invoke-direct/range {v1 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v48
.end method
