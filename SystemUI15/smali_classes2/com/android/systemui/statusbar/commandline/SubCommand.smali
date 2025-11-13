.class public interface abstract Lcom/android/systemui/statusbar/commandline/SubCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Describable;


# virtual methods
.method public abstract getCmd()Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.end method

.method public abstract getValidationStatus()Z
.end method

.method public abstract parseSubCommandArgs(Ljava/util/ListIterator;)V
.end method
