.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field private static final greylist-max-r DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final blacklist XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final blacklist XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final blacklist XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final blacklist XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final blacklist XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static blacklist mIs7BitTranslationTableLoaded:Z

.field private static blacklist mTranslationTable:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensure7BitTranslationTableLoaded()V
    .locals 2

    const-class v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist load7BitTranslationTableFromXml()V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Sms7BitEncodingTranslator"

    if-nez v0, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "load7BitTranslationTableFromXml: open normal file"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v3, 0x117007c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_1
    :try_start_0
    const-string v3, "SmsEnforce7BitTranslationTable"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v4, "TranslationType"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const-string v4, "Type"

    invoke-interface {v0, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v5, "common"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "gsm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_5
    const-string v5, "cdma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    sput-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Parsing 7BitTranslationTable: found incorrect type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_7
    const-string v4, "Character"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_a

    const-string/jumbo v4, "from"

    const/4 v6, -0x1

    invoke-interface {v0, v5, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "to"

    invoke-interface {v0, v5, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v6, :cond_9

    if-eq v5, v6, :cond_9

    sget-boolean v6, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading mapping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v6, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_9
    const-string v6, "Invalid translation table file format"

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_0

    :cond_a
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_c

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "Got exception while loading 7BitTranslationTable file."

    invoke-static {v2, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_c

    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c
    return-void

    :goto_4
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_d

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    throw v2
.end method

.method private static blacklist noTranslationNeeded(CZ)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    return v0
.end method

.method public static blacklist translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "Sms7BitEncodingTranslator"

    const-string v2, "Null message can not be translated"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    :cond_4
    new-array v0, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    return-object v0
.end method

.method private static blacklist translateIfNeeded(CZ)C
    .locals 5

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    move-result v0

    const-string v1, "Sms7BitEncodingTranslator"

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No translation needed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0

    :cond_1
    const/4 v0, -0x1

    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_2
    if-ne v0, v3, :cond_4

    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_4
    :goto_0
    if-eq v0, v3, :cond_6

    sget-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") translated to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    int-to-char v1, v0

    return v1

    :cond_6
    sget-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No translation found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Replacing for empty space"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v1, 0x20

    return v1
.end method
