.class final Lcom/samsung/android/jdsms/DsmsMessage;
.super Ljava/lang/Object;
.source "DsmsMessage.java"


# static fields
.field private static final blacklist SUBTAG:Ljava/lang/String; = "[DsmsMessage] "


# instance fields
.field private final blacklist mDetail:Ljava/lang/String;

.field private final blacklist mFeatureCode:Ljava/lang/String;

.field private final blacklist mValue:Ljava/lang/Long;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateValue(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateDetail(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateDetail(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/jdsms/DsmsMessage;->validateValue(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-void
.end method

.method private static blacklist validateDetail(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Detail field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFeatureCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateValue(Ljava/lang/Long;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Value field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeatureCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
