.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object p1, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-static {p1}, Landroid/widget/CursorTreeAdapter;->-$$Nest$fgetmHandler(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->-$$Nest$fgetmAutoRequery(Landroid/widget/CursorTreeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fputmDataValid(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)V

    :cond_0
    return-void
.end method
