.class Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;
.super Ljava/lang/Object;
.source "SecPreferenceConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->-$$Nest$misOnline(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->-$$Nest$mforceRefreshConfigVersion(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V

    const p1, 0x88b8

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long p0, p1

    add-long/2addr v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 128
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :goto_0
    return-void
.end method
