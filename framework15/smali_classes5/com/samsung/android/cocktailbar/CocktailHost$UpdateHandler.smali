.class Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
.super Landroid/os/Handler;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mpackageSuspendChanged(Lcom/samsung/android/cocktailbar/CocktailHost;Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotePauseComponent(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnoteResumeComponent(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mchangeVisibleEdgeService(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotifyWakeUpState(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotifyKeyguardState(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mpartiallyUpdateHelpView(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msetPullToRefresh(Lcom/samsung/android/cocktailbar/CocktailHost;IILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msendExtraDataToCocktailBar(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mswitchDefaultCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msetDisableTickerView(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mupdateToolLauncher(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mviewDataChanged(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mcloseCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mshowCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mremoveCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mpartiallyUpdateCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    goto :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mupdateCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_e
        0x5 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method
