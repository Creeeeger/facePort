.class Lcom/samsung/android/settings/connection/GigaMultiPath$6;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$6;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$6;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method
