.class public abstract Lcom/samsung/android/sdk/command/template/CommandTemplate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$2;

.field public static final NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;


# instance fields
.field public final mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$2;

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

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
