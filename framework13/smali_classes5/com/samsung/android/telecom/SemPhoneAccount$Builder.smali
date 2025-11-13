.class public Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
.super Ljava/lang/Object;
.source "SemPhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SemPhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist allowed:Z

.field private blacklist componentName:Landroid/content/ComponentName;

.field private blacklist order:I

.field private blacklist packageName:Ljava/lang/String;

.field blacklist phoneAccount:Landroid/telecom/PhoneAccount;

.field private blacklist selfManaged:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 60
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/telecom/SemPhoneAccount;
    .locals 8

    .line 64
    new-instance v7, Lcom/samsung/android/telecom/SemPhoneAccount;

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->phoneAccount:Landroid/telecom/PhoneAccount;

    iget v4, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->order:I

    iget-boolean v5, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->selfManaged:Z

    iget-boolean v6, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->allowed:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/telecom/SemPhoneAccount;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/PhoneAccount;IZZ)V

    return-object v7
.end method

.method public blacklist setAllowed(Z)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "allowed"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->allowed:Z

    .line 56
    return-object p0
.end method

.method public blacklist setComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->componentName:Landroid/content/ComponentName;

    .line 36
    return-object p0
.end method

.method public blacklist setOrder(I)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "order"    # I

    .line 45
    iput p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->order:I

    .line 46
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->packageName:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public blacklist setPhoneAccount(Landroid/telecom/PhoneAccount;)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->phoneAccount:Landroid/telecom/PhoneAccount;

    .line 41
    return-object p0
.end method

.method public blacklist setSelfManaged(Z)Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    .locals 0
    .param p1, "selfManaged"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount$Builder;->selfManaged:Z

    .line 51
    return-object p0
.end method
