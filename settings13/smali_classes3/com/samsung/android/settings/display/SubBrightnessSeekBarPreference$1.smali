.class Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;
.super Landroid/database/ContentObserver;
.source "SubBrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->onSubBrightnessChanged()V

    return-void
.end method
