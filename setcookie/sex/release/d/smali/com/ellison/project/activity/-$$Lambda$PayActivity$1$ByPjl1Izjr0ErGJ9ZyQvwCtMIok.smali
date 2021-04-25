.class public final synthetic Lcom/ellison/project/activity/-$$Lambda$PayActivity$1$ByPjl1Izjr0ErGJ9ZyQvwCtMIok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ellison/project/activity/PayActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/ellison/project/activity/PayActivity$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ellison/project/activity/-$$Lambda$PayActivity$1$ByPjl1Izjr0ErGJ9ZyQvwCtMIok;->f$0:Lcom/ellison/project/activity/PayActivity$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ellison/project/activity/-$$Lambda$PayActivity$1$ByPjl1Izjr0ErGJ9ZyQvwCtMIok;->f$0:Lcom/ellison/project/activity/PayActivity$1;

    invoke-virtual {v0}, Lcom/ellison/project/activity/PayActivity$1;->lambda$onSuccess$0$PayActivity$1()V

    return-void
.end method
