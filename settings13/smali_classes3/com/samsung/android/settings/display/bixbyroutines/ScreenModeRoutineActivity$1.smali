.class Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;
.super Ljava/lang/Object;
.source "ScreenModeRoutineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->showScreenModeDialog(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$screenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;Landroid/widget/ListView;Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->val$screenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->val$screenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getValueByPosition(I)I

    move-result p1

    const-string p2, "screen_mode_setting"

    const-string v0, "screen_mode_automatic_setting"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 121
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setWhiteBalanceEnable(Z)V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setWhiteBalanceEnable(Z)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmParameterValues(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p2

    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "screen_mode_routine_key"

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 133
    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmParameterValues(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 135
    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object p2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick setScreenMode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenMode.RoutineActivity"

    invoke-static {v0, p2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->-$$Nest$fgetmScreenModeRoutineHelper(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenModeInternal(I)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
