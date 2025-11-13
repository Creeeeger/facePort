.class Lcom/samsung/android/settings/DCMHomeSettings$1;
.super Ljava/lang/Object;
.source "DCMHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DCMHomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iput p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 220
    iget-object p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fputmSelectedHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$mchangeHome(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$mstartLauncher(Lcom/samsung/android/settings/DCMHomeSettings;)V

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
