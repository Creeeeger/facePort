.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    .line 167
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 173
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TextClock;->-$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V

    .line 181
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 182
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 187
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TextClock;->-$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 196
    return-void
.end method
