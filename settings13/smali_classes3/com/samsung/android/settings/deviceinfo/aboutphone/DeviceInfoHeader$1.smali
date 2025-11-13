.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;
.super Ljava/lang/Object;
.source "DeviceInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initInfoChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 231
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method
