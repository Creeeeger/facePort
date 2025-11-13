.class Lcom/samsung/android/settings/display/SecDreamSettings$3;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$3;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$sfgetSCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON()I

    move-result p0

    const/16 p1, 0x2f

    const-wide/16 v0, 0x3

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
