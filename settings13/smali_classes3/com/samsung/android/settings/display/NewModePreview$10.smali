.class Lcom/samsung/android/settings/display/NewModePreview$10;
.super Landroid/database/ContentObserver;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$10;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$10;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$msetEnabledExclusiveBLF(Lcom/samsung/android/settings/display/NewModePreview;)V

    return-void
.end method
