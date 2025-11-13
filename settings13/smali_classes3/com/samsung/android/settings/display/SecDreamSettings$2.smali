.class Lcom/samsung/android/settings/display/SecDreamSettings$2;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

.field final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$2;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$2;->val$onClick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$2;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method
