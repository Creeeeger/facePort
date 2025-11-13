.class public abstract Lcom/samsung/android/sdk/command/template/CommandTemplate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

.field public static final NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;


# instance fields
.field public final mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_template_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public static createTemplateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "key_template_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    const-string v3, "key_new_value"

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v2, "key_current_active_mode"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    const-string v2, "key_mode_flags"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    const-string v2, "key_media_info"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    return-object v1

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;->mJSONString:Ljava/lang/String;

    return-object v1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_5
    new-instance v1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return-object v1

    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_template_id"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_template_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public abstract getTemplateType()I
.end method
