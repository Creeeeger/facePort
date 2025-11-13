.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 351
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "any_screen_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-$$Nest$mreduceSizeBroadcast(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    return-void
.end method
